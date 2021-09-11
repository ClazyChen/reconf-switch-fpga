package fpga

import chisel3._
import chisel3.util._

// 32 - 48 - 32 = 112 fields
// there are 112 fields in total
// so the field id width is 8

object PISAconst {
    val group_number = 6
    val field_id_width = 8
    val field_number = 224
    val field8_number = field_number*2/7
    val field16_number = field_number*3/7
    val field32_number = field_number*2/7
}

class MatchKeyPISAConfig extends Bundle {
    // 256 bits = 32 Bytes
    // splitted into 8 groups
    // each group is configured as 3 types
    // 4 * 1 or 2 * 2 or 1 * 4
    // config : 0-invalid, 1-4*1, 2-2*2, 3-1*4
    val key_length   = UInt(const.MATCH.match_key_length_width.W)
    val field_config = Vec(PISAconst.group_number, UInt(2.W))
    val field_mask   = Vec(PISAconst.group_number, Vec(4, Bool()))
    val field_id     = Vec(PISAconst.group_number, Vec(4, UInt(PISAconst.field_id_width.W)))
}

class MatchTablePISAConfig extends Bundle {
    val table_depth = UInt(5.W)
    val table_width = UInt(5.W) // max = 3 + 1 = 4
}

class MatchKeyPISAConfigModify extends Bundle {
    val en           = Input(Bool())
    val key_length   = Input(UInt(const.MATCH.match_key_length_width.W))
    val group_index  = Input(UInt(3.W))
    val group_config = Input(UInt(2.W))
    val group_mask   = Input(Vec(4, Bool()))
    val group_id     = Input(Vec(4, UInt(PISAconst.field_id_width.W)))
}

class MatcherSRAMPISAModify extends Bundle {
    val en           = Input(Bool())
    val sram_id      = Input(UInt(4.W))
    val addr         = Input(UInt(const.SRAM.address_width.W))
    val data         = Input(UInt(const.SRAM.data_width.W))
}

class MatcherPISAModify extends Bundle {
    val en        = Input(Bool())
    val config_id = Input(UInt(const.config_id_width.W))
    val key_mod   = new MatchKeyPISAConfigModify
    val table_mod = Input(new MatchTablePISAConfig)
    val w         = new MatcherSRAMPISAModify
}

// Matcher without SRAM clusters
// each matcher has its own 8 SRAMs
class MatcherPISA extends Module {
    val io = IO(new Bundle {
        val pipe        = new Pipeline
        val mod         = new MatcherPISAModify
        val hit         = Output(Bool()) // whether the match hits
        val match_value = Output(UInt(const.MATCH.match_value_width.W))
    })

    val key_config = Reg(Vec(const.config_number, new MatchKeyPISAConfig))
    val table_config = Reg(Vec(const.config_number, new MatchTablePISAConfig))
    when (io.mod.en) {
        when (io.mod.key_mod.en) {
            key_config(io.mod.config_id).field_config(io.mod.key_mod.group_index) := io.mod.key_mod.group_config
            key_config(io.mod.config_id).field_id(io.mod.key_mod.group_index) := io.mod.key_mod.group_id
            key_config(io.mod.config_id).field_mask(io.mod.key_mod.group_index) := io.mod.key_mod.group_mask
            key_config(io.mod.config_id).key_length := io.mod.key_mod.key_length
        }
        table_config(io.mod.config_id) := io.mod.table_mod
    }

    val fields = for (j <- 0 until PISAconst.field_number) yield {
        val field_length = if (j < PISAconst.field8_number) 1 else (if (j < PISAconst.field8_number + PISAconst.field16_number) 2 else 4)
        val field_start  = if (j < PISAconst.field8_number) j else (if (j < PISAconst.field8_number + PISAconst.field16_number) j * 2 - PISAconst.field8_number else j * 4 - PISAconst.field8_number*3 - PISAconst.field16_number*2)
        if (field_length == 1) {
            (phv: PHV) => phv.data(field_start)
        } else if (field_length == 2) {
            (phv: PHV) => Cat(
                phv.data(field_start),
                phv.data(field_start + 1)
            )
        } else {
            (phv: PHV) => Cat(
                phv.data(field_start),
                phv.data(field_start + 1),
                phv.data(field_start + 2),
                phv.data(field_start + 3)
            )
        }
    }

    // pipeline level 1
    class MatchGetKeyPISA extends Module {
        val io = IO(new Bundle {
            val pipe       = new Pipeline
            val key_config = Input(Vec(const.config_number, new MatchKeyPISAConfig))
            val match_key  = Output(UInt(const.MATCH.match_key_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val config = io.key_config(phv.next_config_id)

        when (phv.is_valid_processor) {
            val groups = Wire(Vec(PISAconst.group_number, UInt(32.W)))
            for (j <- 0 until PISAconst.group_number) {
                val group_config = config.field_config(j)
                val group_mask   = config.field_mask(j)
                val group_id     = config.field_id(j)
                groups(j) := 0.U(32.W)
                when (group_config === 1.U(2.W)) {
                    // 4*1
                    val bytes = Wire(Vec(4, UInt(8.W)))
                    for (k <- 0 until 4) {
                        val field_id = group_id(k)
                        bytes(k) := 0.U(8.W)
                        when (group_mask(k)) {
                            for (l <- 0 until PISAconst.field8_number) {
                                when (l.U(PISAconst.field_id_width.W) === field_id) {
                                    bytes(k) := fields(l)(phv)
                                }
                            }
                        }
                    }
                    groups(j) := Cat(bytes(0), bytes(1), bytes(2), bytes(3))
                }
                when (group_config === 2.U(2.W)) {
                    // 2*2
                    val double_bytes = Wire(Vec(2, UInt(16.W)))
                    for (k <- 0 until 2) {
                        val field_id = group_id(k)
                        double_bytes(k) := 0.U(16.W)
                        when (group_mask(k)) {
                            for (l <- PISAconst.field8_number until PISAconst.field8_number + PISAconst.field16_number) {
                                when (l.U(PISAconst.field_id_width.W) === field_id) {
                                    double_bytes(k) := fields(l)(phv)
                                }
                            }
                        }
                    }
                    groups(j) := Cat(double_bytes(0), double_bytes(1))
                }
                when (group_config === 3.U(2.W)) {
                    // 1*4
                    val field_id = group_id(0)
                    groups(j) := 0.U(32.W)
                    for (l <- PISAconst.field8_number + PISAconst.field16_number until PISAconst.field_number) {
                        when (l.U(PISAconst.field_id_width.W) === field_id) {
                            groups(j) := fields(l)(phv)
                        }
                    }
                }
            }
            io.match_key := groups.reduce(Cat(_, _)) // Cat(5,4,3,2,1,0)
        } .otherwise {
            io.match_key := 0.U(const.MATCH.match_key_width.W)
        }
    }

    // pipeline level II - hash

    // pipeline level 3
    // read data
    class MatchReadDataPISA extends Module {
        val io = IO(new Bundle {
            val pipe         = new Pipeline
            val table_config = Input(Vec(const.config_number, new MatchTablePISAConfig))
            val key_in       = Input(UInt(const.HASH.hash_key_width.W))
            val key_out      = Output(UInt(const.HASH.hash_key_width.W))
            val addr_in      = Input(UInt(const.SRAM.address_width.W))
            val cs_in        = Input(UInt(const.SRAM.sram_id_width.W))
            val data_out     = Output(UInt(const.MATCH.match_data_width.W))
            val w            = new MatcherSRAMPISAModify
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val addr = Reg(UInt(const.SRAM.address_width.W)) // hash value
        addr := io.addr_in

        val cs = Reg(UInt(const.SRAM.sram_id_width.W))
        cs := io.cs_in

        val mem = for (j <- 0 until 8) yield {
            val exe = Module(new SRAM)
            exe.io.w.en   := io.w.en && j.U(4.W) === io.w.sram_id
            exe.io.w.addr := io.w.addr
            exe.io.w.data := io.w.data
            exe.io.r.addr := io.addr_in
            exe
        }

        val cs_vec = Wire(Vec(8, Bool()))
        for (j <- 0 until 8) {
            cs_vec(j) := false.B
        }
        
        when (io.pipe.phv_in.is_valid_processor) {
            val config = io.table_config(io.pipe.phv_in.next_config_id)
            val width  = config.table_width
            val depth  = config.table_depth
            val cs_signals = Wire(Vec(4, UInt(const.SRAM.sram_id_width.W)))
            cs_signals(0) := io.cs_in
            cs_signals(1) := io.cs_in + depth
            cs_signals(2) := io.cs_in + Cat(depth, 0.U(1.W))
            cs_signals(3) := io.cs_in + Cat(depth, 1.U(1.W))

            for (j <- 0 until 4) {
                when (j.U < width) {
                    for (k <- 0 until 8) {
                        when (cs_signals(j) === k.U) {
                            cs_vec(k) := true.B
                        }
                    }
                }
            }
        }
        for (j <- 0 until 8) {
            mem(j).io.r.en := cs_vec(j)
        }

        io.data_out := 0.U(const.MATCH.match_data_width.W)
        when (phv.is_valid_processor) {
            val config = io.table_config(phv.next_config_id)
            val width  = config.table_width // max = 4
            val depth  = config.table_depth

            val cs_signals = Wire(Vec(4, UInt(const.SRAM.sram_id_width.W)))
            cs_signals(0) := cs
            cs_signals(1) := cs + depth
            cs_signals(2) := cs + Cat(depth, 0.U(1.W))
            cs_signals(3) := cs + Cat(depth, 1.U(1.W))

            val dqbytes = Wire(Vec(4, UInt(64.W)))
            for (j <- 0 until 4) {
                dqbytes(j) := 0.U(64.W)
                for (k <- 0 until 8) {
                    when (cs_signals(j) === k.U) {
                        dqbytes(j) := mem(k).io.r.data
                    }
                }
            }
            io.data_out := dqbytes.reduce(Cat(_, _))// Cat(dqbytes(3:0))
        }
    }

    // pipeline level 4 MatchResult - the same as IPSA
    class MatchResultPISA extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val key_config  = Input(Vec(const.config_number, new MatchKeyPISAConfig))
            val key_in      = Input(UInt(const.HASH.hash_key_width.W)) // lower bits are valid
            val data_in     = Input(UInt(const.MATCH.match_data_width.W)) // lower bits are valid
            val hit         = Output(Bool())
            val match_value = Output(UInt(const.MATCH.match_value_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        val data = Reg(UInt(const.MATCH.match_data_width.W))
        data := io.data_in

        val config = io.key_config(phv.next_config_id)
        when (phv.is_valid_processor) {
            val key_equal = Wire(Vec(PISAconst.group_number, Bool()))
            for (j <- 0 until PISAconst.group_number) {
                val group_config = config.field_config(j)
                val group_mask   = config.field_mask(j)
                val group_id     = config.field_id(j)
                val group_data   = data((j+1)*32-1+const.MATCH.match_value_width, j*32+const.MATCH.match_value_width)
                val key_data     = key((j+1)*32-1,j*32)
                key_equal(j)     := true.B
                when (group_config === 1.U(2.W)) {
                    // 4*1
                    val bytes_equal = Wire(Vec(4, Bool()))
                    for (k <- 0 until 4) {
                        when (group_mask(k)) {
                            bytes_equal(k) := group_data(32-1-8*k, 32-8*(k+1)) === key_data(32-1-8*k, 32-8*(k+1))
                        } .otherwise {
                            bytes_equal(k) := true.B
                        }
                    }
                    key_equal(j) := bytes_equal.reduce(_ && _)
                }
                when (group_config === 2.U(2.W)) {
                    // 2*2
                    val dbytes_equal = Wire(Vec(2, Bool()))
                    for (k <- 0 until 2) {
                        when (group_mask(k)) {
                            dbytes_equal(k) := group_data(32-1-16*k, 32-16*(k+1)) === key_data(32-1-16*k, 32-16*(k+1))
                        } .otherwise {
                            dbytes_equal(k) := true.B
                        }
                    }
                    key_equal(j) := dbytes_equal.reduce(_ && _)
                }
                when (group_config === 3.U(2.W)) {
                    // 1*4
                    key_equal(j) := group_data === key_data
                }
            }
            io.hit := key_equal.reduce(_ && _)
            io.match_value := data(const.MATCH.match_value_width-1,0)
        } .otherwise {
            io.hit := false.B
            io.match_value := 0.U(const.MATCH.match_value_width.W)
        }
    }
    
    // pipeline
    val pipe1 = Module(new MatchGetKeyPISA)
    val pipe2 = Module(new Hash)
    val pipe3 = Module(new MatchReadDataPISA)
    val pipe4 = Module(new MatchResultPISA)

    pipe1.io.pipe.phv_in <> io.pipe.phv_in
    pipe1.io.key_config  := key_config

    pipe2.io.pipe.phv_in <> pipe1.io.pipe.phv_out
    pipe2.io.mod.hash_depth_mod := io.mod.en
    pipe2.io.mod.config_id := io.mod.config_id
    pipe2.io.mod.hash_depth := io.mod.table_mod.table_depth
    pipe2.io.key_in      <> pipe1.io.match_key

    pipe3.io.pipe.phv_in <> pipe2.io.pipe.phv_out
    pipe3.io.table_config := table_config
    pipe3.io.key_in      <> pipe2.io.key_out
    pipe3.io.addr_in     <> pipe2.io.hash_val
    pipe3.io.cs_in       <> pipe2.io.hash_val_cs
    pipe3.io.w           := io.mod.w

    pipe4.io.pipe.phv_in <> pipe3.io.pipe.phv_out
    pipe4.io.key_in      <> pipe3.io.key_out
    pipe4.io.data_in     <> pipe3.io.data_out
    pipe4.io.key_config  := key_config

    io.pipe.phv_out      <> pipe4.io.pipe.phv_out
    io.hit               <> pipe4.io.hit
    io.match_value       <> pipe4.io.match_value
}

object MAT_PISA_OBJ extends App {
    Driver.execute(args, () => new MatcherPISA)
}