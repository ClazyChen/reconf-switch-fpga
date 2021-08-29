package fpga

import chisel3._
import chisel3.util._

class Matcher extends Module {
    val io = IO(new Bundle {
        val pipe        = new Pipeline
        val mod         = new MatcherModify
        val hit         = Output(Bool()) // whether the match hits
        val match_value = Output(UInt(const.MATCH.match_value_width.W))

        val mem         = Flipped(new ClusterReadPort)
    })

    // configuration
    val key_config = Reg(Vec(const.config_number, new MatchKeyConfig))
    val table_config = Reg(Vec(const.config_number, new MatchTableConfig))
    
    when (io.mod.en) {
        key_config(io.mod.config_id)   := io.mod.key_mod
        table_config(io.mod.config_id) := io.mod.table_mod
    }

    // pipeline level 1
    // get offset from header_id & internal_offset
    class MatchGetOffset extends Module {
        val io = IO(new Bundle {
            val pipe       = new Pipeline
            val key_config = Input(Vec(const.config_number, new MatchKeyConfig))
            val key_offset = Output(UInt(const.PHV.offset_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        when (phv.is_valid_processor) {
            val key_config = io.key_config(phv.next_config_id)
            val header_offset = const.PHV.offset(phv.header(key_config.header_id))
            val key_offset = header_offset + key_config.internal_offset
            io.key_offset := key_offset
        } .otherwise {
            io.key_offset := 0.U(const.PHV.offset_width.W)
        }
    }
    
    // pipeline level 2
    // from offset & length get match_key (higher bits)
    class MatchGetKey extends Module {
        val io = IO(new Bundle {
            val pipe       = new Pipeline
            val key_config = Input(Vec(const.config_number, new MatchKeyConfig))
            val key_offset = Input(UInt(const.PHV.offset_width.W))
            val match_key  = Output(UInt(const.MATCH.match_key_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key_offset = Reg(UInt(const.PHV.offset_width.W))
        key_offset := io.key_offset

        when (phv.is_valid_processor) {
            val match_key_bytes = Wire(Vec(const.MATCH.max_match_key_length, UInt(8.W)))

            // higher bits equals to real match_key, lower bits equals to 0
            for (j <- 0 until const.MATCH.max_match_key_length) {
                val local_offset = j.U(const.MATCH.match_key_length_width.W)
                when (local_offset < io.key_config(phv.next_config_id).key_length) {
                    match_key_bytes(const.MATCH.max_match_key_length-j-1) := phv.data(key_offset + local_offset)
                } .otherwise {
                    match_key_bytes(const.MATCH.max_match_key_length-j-1) := 0.U(8.W)
                }
            }

            val match_key = match_key_bytes.reduce(Cat(_, _))
            io.match_key := match_key
        } .otherwise {
            io.match_key := 0.U(const.MATCH.match_key_width.W)
        }
    }

    // pipeline level 3(actually 8) : hash
    
    // pipeline level 4
    // calculate cs
    class MatchGetCs extends Module {
        val io = IO(new Bundle {
            val pipe       = new Pipeline
            val table_config = Input(Vec(const.config_number, new MatchTableConfig))
            val key_in     = Input(UInt(const.HASH.hash_key_width.W))
            val key_out    = Output(UInt(const.HASH.hash_key_width.W))
            val addr_in    = Input(UInt(const.SRAM.address_width.W))
            val addr_out   = Output(UInt(const.SRAM.address_width.W))
            val cs_in      = Input(UInt(const.SRAM.sram_id_width.W))
            val cs_out     = Output(UInt(const.SRAM.sram_id_width.W))
            val cs_vec_out = Output(Vec(const.SRAM.sram_number_in_cluster, Bool()))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val addr = Reg(UInt(const.SRAM.address_width.W)) // hash value
        addr := io.addr_in
        io.addr_out := addr

        val cs = Reg(UInt(const.SRAM.sram_id_width.W))
        cs := io.cs_in
        io.cs_out := cs

        val config = io.table_config(phv.next_config_id)
        val width = config.table_width
        val depth = config.table_depth
        for (j <- 0 until const.SRAM.sram_number_in_cluster) {
            io.cs_vec_out(j) := false.B
        }
        when (phv.is_valid_processor) {
            for (k <- 0 until const.SRAM.max_sram_width_extend_degree) {
                val width_extend = io.table_config(phv.next_config_id).table_width > k.U(const.SRAM.sram_number_width.W)
                when (width_extend) {
                    // val extended_cs = cs + depth * k
                    val cs0 = cs
                    val cs1 = Mux(depth(0), cs0 + depth, cs0)
                    val cs2 = Mux(depth(1), cs1 + Cat(depth, 0.U(1.W)), cs1)
                    io.cs_vec_out(cs2) := true.B
                }
            }
        }
    }

    // pipeline level 5
    // read data
    class MatchReadData extends Module {
        val io = IO(new Bundle {
            val pipe       = new Pipeline
            val key_in     = Input(UInt(const.HASH.hash_key_width.W))
            val key_out    = Output(UInt(const.HASH.hash_key_width.W))
            val cs_in      = Input(UInt(const.SRAM.sram_id_width.W))
            val cs_out     = Output(UInt(const.SRAM.sram_id_width.W))
            val addr_in    = Input(UInt(const.SRAM.address_width.W))
            val cs_vec_in  = Input(Vec(const.SRAM.sram_number_in_cluster, Bool()))
            val data_out   = Output(Vec(const.SRAM.sram_number_in_cluster, UInt(const.SRAM.data_width.W)))
            val mem        = Flipped(new ClusterReadPort)
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val cs = Reg(UInt(const.SRAM.sram_id_width.W))
        cs := io.cs_in
        io.cs_out := cs

        for (j <- 0 until const.SRAM.sram_number_in_cluster) {
            io.mem.cluster(j).en   := io.cs_vec_in(j) && io.pipe.phv_in.is_valid_processor
            io.mem.cluster(j).addr := io.addr_in
            io.data_out(j)         := io.mem.cluster(j).data
        }
    }

    // pipeline level 11
    // data reshape
    class MatchDataReshape extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val table_config = Input(Vec(const.config_number, new MatchTableConfig))
            val key_in      = Input(UInt(const.HASH.hash_key_width.W))
            val key_out     = Output(UInt(const.HASH.hash_key_width.W))
            val cs_in       = Input(UInt(const.SRAM.sram_id_width.W))
            val data_in     = Input(Vec(const.SRAM.sram_number_in_cluster, UInt(const.SRAM.data_width.W)))
            val data_out    = Output(UInt(const.MATCH.match_data_width.W))
        })
        
        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val cs = Reg(UInt(const.SRAM.sram_id_width.W))
        cs := io.cs_in

        val data = Reg(Vec(const.SRAM.sram_number_in_cluster, UInt(const.SRAM.data_width.W)))
        data := io.data_in

        val possible  = const.MATCH.match_data_width / const.SRAM.data_width
        val data_temp = Wire(Vec(possible, UInt(const.SRAM.data_width.W)))
        for (j <- 0 until possible) {
            data_temp(j) := 0.U(const.SRAM.data_width.W)
        }
        val table_config = io.table_config(phv.next_config_id)
        val depth = table_config.table_depth

        when (phv.is_valid_processor) {
            for (k <- 0 until const.SRAM.max_sram_width_extend_degree) {
                val width_extend = io.table_config(phv.next_config_id).table_width > k.U(const.SRAM.sram_number_width.W)
                when (width_extend) {
                    // val extended_cs = cs + depth * k
                    val cs0 = cs
                    val cs1 = Mux(depth(0), cs0 + depth, cs0)
                    val cs2 = Mux(depth(1), cs1 + Cat(depth, 0.U(1.W)), cs1)
                    data_temp(k) := data(cs2)
                }
            }
        }
        io.data_out := data_temp.reduce(Cat(_, _))
    }

    // pipeline level 12
    // get result
    class MatchResult extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val key_config  = Input(Vec(const.config_number, new MatchKeyConfig))
            val key_in      = Input(UInt(const.HASH.hash_key_width.W))
            val data_in     = Input(UInt(const.MATCH.match_data_width.W))
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

        when (phv.is_valid_processor) {
            val key_equal = Wire(Vec(const.MATCH.max_match_key_length, Bool()))
            val key_config = io.key_config(phv.next_config_id)

            for (j <- 0 until const.MATCH.max_match_key_length) {
                val key_byte = key(const.HASH.hash_key_width-1-j*8, const.HASH.hash_key_width-(j+1)*8)
                val data_byte = data(const.MATCH.match_data_width-1-j*8, const.MATCH.match_data_width-(j+1)*8)
                when (j.U(const.MATCH.match_key_length_width.W) < key_config.key_length) {
                    key_equal(j) := key_byte === data_byte
                } .otherwise {
                    key_equal(j) := true.B
                }
            }

            io.hit := key_equal.reduce(_ && _)
            io.match_value := 0.U(const.MATCH.match_value_width.W)
            for (j <- 1 until (1+const.MATCH.max_match_key_length)) {
                when (j.U(const.MATCH.match_key_length_width.W) === key_config.key_length) {
                    io.match_value := data(const.MATCH.match_data_width-1-j*8, const.MATCH.match_key_width-j*8)
                }
            }
        } .otherwise {
            io.hit := false.B
            io.match_value := 0.U(const.MATCH.match_value_width.W)
        }
    }

    // pipeline
    val pipe1 = Module(new MatchGetOffset)
    val pipe2 = Module(new MatchGetKey)
    val pipe3to8 = Module(new Hash) // actually 8 levels not 6
    val pipe9 = Module(new MatchGetCs)
    val pipe10 = Module(new MatchReadData)
    val pipe11 = Module(new MatchDataReshape)
    val pipe12 = Module(new MatchResult)

    pipe1.io.pipe.phv_in <> io.pipe.phv_in
    pipe1.io.key_config  := key_config

    pipe2.io.pipe.phv_in <> pipe1.io.pipe.phv_out
    pipe2.io.key_offset  <> pipe1.io.key_offset
    pipe2.io.key_config  := key_config

    pipe3to8.io.pipe.phv_in <> pipe2.io.pipe.phv_out
    pipe3to8.io.mod.hash_depth_mod := io.mod.en
    pipe3to8.io.mod.config_id      := io.mod.config_id
    pipe3to8.io.mod.hash_depth     := io.mod.table_mod.table_depth
    pipe3to8.io.key_in   <> pipe2.io.match_key

    pipe9.io.pipe.phv_in  <> pipe3to8.io.pipe.phv_out
    pipe9.io.key_in       <> pipe3to8.io.key_out
    pipe9.io.addr_in      <> pipe3to8.io.hash_val
    pipe9.io.cs_in        <> pipe3to8.io.hash_val_cs
    pipe9.io.table_config := table_config

    pipe10.io.pipe.phv_in <> pipe9.io.pipe.phv_out
    pipe10.io.key_in      <> pipe9.io.key_out
    pipe10.io.cs_in       <> pipe9.io.cs_out
    pipe10.io.addr_in     <> pipe9.io.addr_out
    pipe10.io.cs_vec_in   <> pipe9.io.cs_vec_out
    pipe10.io.mem         <> io.mem

    pipe11.io.pipe.phv_in <> pipe10.io.pipe.phv_out
    pipe11.io.key_in      <> pipe10.io.key_out
    pipe11.io.cs_in       <> pipe10.io.cs_out
    pipe11.io.data_in     <> pipe10.io.data_out
    pipe11.io.table_config := table_config

    pipe12.io.pipe.phv_in <> pipe11.io.pipe.phv_out
    pipe12.io.key_in      <> pipe11.io.key_out
    pipe12.io.data_in     <> pipe11.io.data_out
    pipe12.io.key_config  := key_config

    io.pipe.phv_out       <> pipe12.io.pipe.phv_out
    io.hit                <> pipe12.io.hit
    io.match_value        <> pipe12.io.match_value
}

object MAT_OBJ extends App {
    Driver.execute(args, () => new Matcher)
}