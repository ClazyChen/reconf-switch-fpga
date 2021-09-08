package fpga

import chisel3._
import chisel3.util._

class ExecutorPISA extends Module {
    val io = IO(new Bundle {
        val pipe        = new Pipeline
        val hit         = Input(Bool())
        val match_value = Input(UInt(const.MATCH.match_value_width.W))
        
        val action_mod  = new ActionModify
    })

    // pipeline level 1
    // read VLIW from SRAMs
    class ActionReaderPISA extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val hit         = Input(Bool()) // hit = false means default action
            val match_value = Input(UInt(const.MATCH.match_value_width.W))
            val args_out    = Vec(const.EXEC.args_length, Output(UInt(8.W)))
            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))

            val action_mod  = new ActionModify
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv
        
        val sram_addr = Mux(io.hit, 0.U(const.SRAM.address_width.W), io.match_value(const.MATCH.match_value_width-1, const.EXEC.args_width))
        val args = Reg(UInt(const.EXEC.args_width.W))
        args := io.match_value(const.EXEC.args_width-1,0)
        for (j <- 0 until const.EXEC.args_length) {
            when (phv.is_valid_processor) {
                io.args_out(j) := args(const.EXEC.args_width-1-j*8, const.EXEC.args_width-(j+1)*8)
            } .otherwise {
                io.args_out(j) := 0.U(8.W)
            }
        }

        val sram = for (j <- 0 until const.EXEC.sram_number) yield {
            val exe = Module(new SRAM)
            exe.io.r.en   := true.B
            exe.io.r.addr := sram_addr
            exe.io.w.en   := io.action_mod.en(j)
            exe.io.w.addr := io.action_mod.addr
            exe.io.w.data := io.action_mod.data(j)
            exe
        }
        
        for (j <- 0 until const.EXEC.sram_number) {
            for (k <- 0 until const.EXEC.primitive_number_per_sram) {
                val vliw_id = j*const.EXEC.primitive_number_per_sram + k
                when (phv.is_valid_processor) {
                    io.vliw_out(vliw_id) := sram(j).io.r.data(const.SRAM.data_width-k*const.EXEC.primitive_width-1,const.SRAM.data_width-(k+1)*const.EXEC.primitive_width)
                } .otherwise {
                    io.vliw_out(vliw_id) := 0.U(const.EXEC.primitive_width.W)
                }                
            }
        }
    }

    class PrimitiveDistributionPISA extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val args_in     = Vec(const.EXEC.args_length, Input(UInt(8.W)))
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val args_out    = Vec(const.EXEC.args_length, Output(UInt(8.W)))
            val vliw_out    = Vec(PISAconst.field_number, Output(UInt(18.W))) // 32 - 14
            val nid_out     = Output(UInt(15.W)) // enable - pid - cid
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val args = Reg(Vec(const.EXEC.args_length, UInt(8.W)))
        args := io.args_in
        io.args_out := args

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in

        val vliw_dis = Wire(Vec(PISAconst.field_number, UInt(18.W)))
        for (j <- 0 until PISAconst.field_number) {
            vliw_dis(j) := 0.U
        }
        val nid      = Wire(UInt(15.W))
        nid := 0.U

        when (phv.is_valid_processor) {
            for (j <- 0 until const.EXEC.primitive_number) {
                val opcode      = PRIM.operation(vliw(j))
                val parameter_1 = PRIM.parameter_1(vliw(j)) // always = dst field
                val parameter_2 = PRIM.parameter_2(vliw(j))
                when (opcode === PRIM.OPCODE.goto) {
                    nid := Cat(1.U(1.W), parameter_2)
                } .otherwise {
                    for (k <- 0 until PISAconst.field_number) {
                        when (k.U === parameter_1) {
                            vliw_dis(k) := Cat(opcode, parameter_2)
                        }
                    }
                }
            }
        }
   
        io.vliw_out := vliw_dis
        io.nid_out  := nid
    }

    class FieldSet extends Bundle {
        val field8  = Vec(PISAconst.field8_number, UInt(8.W))
        val field16 = Vec(PISAconst.field16_number, UInt(16.W))
        val field32 = Vec(PISAconst.field32_number, UInt(32.W))
    }
    
    def select_field(fs : FieldSet, index : Int):UInt = {
        if (index < PISAconst.field8_number) {
            return fs.field8(index)
        } else if (index < PISAconst.field8_number + PISAconst.field16_number) {
            return fs.field16(index - PISAconst.field8_number)
        } else {
            return fs.field32(index - PISAconst.field8_number - PISAconst.field16_number)
        }
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

    class PrimitiveGetSourcePISA extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val args_in     = Vec(const.EXEC.args_length, Input(UInt(8.W)))
            val vliw_in     = Vec(PISAconst.field_number, Input(UInt(18.W))) 
            val nid_in      = Input(UInt(15.W))
            val nid_out     = Output(UInt(15.W))
            val tag_out     = Output(Vec(PISAconst.field_number, UInt(2.W))) // 0 - unmodified, 1 - wait for add, 2 - set
            val field_set   = Output(new FieldSet)
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val args = Reg(Vec(const.EXEC.args_length, UInt(8.W)))
        args := io.args_in

        val vliw = Reg(Vec(PISAconst.field_number, UInt(18.W)))
        vliw := io.vliw_in

        val nid  = Reg(UInt(15.W))
        nid := io.nid_in
        io.nid_out := nid

        for (j <- 0 until PISAconst.field_number) {
            val field_length = if (j < PISAconst.field8_number) 1 else (if (j < PISAconst.field8_number + PISAconst.field16_number) 2 else 4)
            val field_data = Wire(UInt((field_length << 3).W))
            val field_tag  = Wire(UInt(2.W))
            field_data := 0.U
            field_tag  := 0.U

            val opcode      = vliw(j)(17,14)
            val parameter_2 = vliw(j)(13,0)

            when (opcode === PRIM.OPCODE.set) {
                val args_offset = PRIM.ARG.offset(parameter_2)
                val args_length = PRIM.ARG.length(parameter_2)
                val bias        = args_offset(2,0)
                val field_bytes = Wire(Vec(field_length, UInt(8.W)))
                for (l <- 0 until field_length) {
                    field_bytes(field_length-1-l) := 0.U(8.W)
                    val local_offset = l.U(3.W)
                    when (local_offset < args_length) {
                        val total_offset = bias + local_offset
                        when (total_offset < const.EXEC.args_length.U) {
                            field_bytes(field_length-1-l) := args(total_offset)
                        }
                    }
                }
                field_data := field_bytes.reduce(Cat(_, _)) // Cat(args[offset+0:l])
                field_tag  := 2.U
            }
            when (opcode === PRIM.OPCODE.addi || opcode === PRIM.OPCODE.seti) {
                val imm = parameter_2
                if (field_length == 1) {
                    field_data := imm(7,0)
                } else {
                    field_data := Cat(Fill(field_length*8-PRIM.parameter_width, imm(PRIM.parameter_width-1)), imm)
                }
                field_tag   := Mux(opcode === PRIM.OPCODE.addi, 1.U(2.W), 2.U(2.W))
            }
            when (opcode === PRIM.OPCODE.copy) {
                for (l <- 0 until PISAconst.field_number) {
                    val src_length = if (l < PISAconst.field8_number) 1 else (if (l < PISAconst.field8_number + PISAconst.field16_number) 2 else 4)
                    if (src_length == field_length) {
                        when (l.U === parameter_2) {
                            field_data := fields(l)(phv)
                        }
                    }
                }
                field_tag   := 2.U(2.W)
            }
            io.tag_out(j) := field_tag
            select_field(io.field_set, j) := field_data
        }
    }

    def update_field(phv: PHV, j: Int, data: UInt):Unit = {
        val field_length = if (j < PISAconst.field8_number) 1 else (if (j < PISAconst.field8_number + PISAconst.field16_number) 2 else 4)
        val field_start  = if (j < PISAconst.field8_number) j else (if (j < PISAconst.field8_number + PISAconst.field16_number) j * 2 - PISAconst.field8_number else j * 4 - PISAconst.field8_number*3 - PISAconst.field16_number*2)
        for (k <- 0 until field_length) {
            phv.data(field_start + k) := data((field_length-k)*8-1, (field_length-k-1)*8)
        }
    }

    class PrimitiveWriteBackPISA extends Module {
        val io = IO(new Bundle {
            val pipe       = new Pipeline
            val nid_in     = Input(UInt(15.W))
            val tag_in     = Input(Vec(PISAconst.field_number, UInt(2.W))) // 0 - unmodified, 1 - wait for add, 2 - set
            val field_set  = Input(new FieldSet)
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv
        
        val fs = Reg(new FieldSet)
        fs := io.field_set

        val tag = Reg(Vec(PISAconst.field_number, UInt(2.W)))
        tag := io.tag_in

        val nid = Reg(UInt(15.W))
        nid := io.nid_in

        for (j <- 0 until 70) {
            val field_length = if (j < PISAconst.field8_number) 1 else (if (j < PISAconst.field8_number + PISAconst.field16_number) 2 else 4)
            val field_width  = field_length << 3
            val field_tag    = tag(j)
            val add1 = Wire(UInt(field_width.W))
            val add2 = Wire(UInt(field_width.W))
            add1 := Mux(
                field_tag(0) ^ field_tag(1),
                select_field(fs, j),
                0.U(field_width.W)
            )
            add2 := Mux(
                field_tag === 2.U(2.W),
                0.U(field_width.W),
                fields(j)(phv)
            )
            update_field(io.pipe.phv_out, j, add1 + add2)
        }

        when (nid(14)) {
            io.pipe.phv_out.next_processor_id := nid(PRIM.parameter_width-1, PRIM.parameter_width-const.header_id_width)
            io.pipe.phv_out.next_config_id    := nid(const.config_id_width-1, 0)
        }
    }

    // pipeline
    val pipe1 = Module(new ActionReaderPISA)
    val pipe2 = Module(new PrimitiveDistributionPISA)
    val pipe3 = Module(new PrimitiveGetSourcePISA)
    val pipe4 = Module(new PrimitiveWriteBackPISA)

    pipe1.io.pipe.phv_in <> io.pipe.phv_in
    pipe1.io.hit         <> io.hit
    pipe1.io.match_value <> io.match_value
    pipe1.io.action_mod  <> io.action_mod
    
    pipe2.io.pipe.phv_in <> pipe1.io.pipe.phv_out
    pipe2.io.args_in     <> pipe1.io.args_out
    pipe2.io.vliw_in     <> pipe1.io.vliw_out

    pipe3.io.pipe.phv_in <> pipe2.io.pipe.phv_out
    pipe3.io.args_in     <> pipe2.io.args_out
    pipe3.io.vliw_in     <> pipe2.io.vliw_out
    pipe3.io.nid_in      <> pipe2.io.nid_out
    
    pipe4.io.pipe.phv_in <> pipe3.io.pipe.phv_out
    pipe4.io.nid_in      <> pipe3.io.nid_out
    pipe4.io.tag_in      <> pipe3.io.tag_out
    pipe4.io.field_set   <> pipe3.io.field_set

    pipe4.io.pipe.phv_out <> io.pipe.phv_out
}