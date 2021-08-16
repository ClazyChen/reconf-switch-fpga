package fpga

import chisel3._
import chisel3.util._

class Executor extends Module {
    val io = IO(new Bundle {
        val pipe        = new Pipeline
        val hit         = Input(Bool()) // whether the match hits
        val match_value = Input(UInt(const.MATCH.match_value_width.W))

        val action_mod  = new ActionModify
    })

    // pipeline level 1
    // read VLIW from SRAMs
    class ActionReader extends Module {
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
            exe.io.w.en   := io.action_mod.en
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

    // pipeline level 2
    // get src field offset for PHV
    class PrimitiveGetOffset extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val args_in     = Vec(const.EXEC.args_length, Input(UInt(8.W)))
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val args_out    = Vec(const.EXEC.args_length, Output(UInt(8.W)))
            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))
            val offset_out  = Vec(const.EXEC.primitive_number, Output(UInt(const.PHV.offset_width.W)))
            val length_out  = Vec(const.EXEC.primitive_number, Output(UInt(const.PHV.offset_width.W)))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val args = Reg(Vec(const.EXEC.args_length, UInt(8.W)))
        args := io.args_in
        io.args_out := args

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in
        io.vliw_out := vliw

        for (j <- 0 until const.EXEC.primitive_number) {
            val opcode      = PRIM.operation(vliw(j))
            val parameter_1 = PRIM.parameter_1(vliw(j))
            val parameter_2 = PRIM.parameter_2(vliw(j))
            
            val is_addi     = PRIM.OPCODE.addi === opcode
            val is_copy     = PRIM.OPCODE.copy === opcode

            when (phv.is_valid_processor && (is_addi || is_copy)) {
                val dst = Mux(is_addi, parameter_1, parameter_2)
                val header_id       = PRIM.FIELD.header_id(dst)
                val internal_offset = PRIM.FIELD.internal_offset(dst)
                val length          = PRIM.FIELD.length(dst)
                val header_offset   = const.PHV.offset(phv.header(header_id))
                val offset          = header_offset + internal_offset
                io.offset_out(j)    := offset
                io.length_out(j)    := length
            } .otherwise {
                io.offset_out(j)    := 0.U(const.PHV.offset_width.W)
                io.length_out(j)    := 0.U(const.PHV.offset_width.W)
            }
        }
    }

    // pipeline level 3
    // get src or imm or arg
    class PrimitiveGetSource extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val args_in     = Vec(const.EXEC.args_length, Input(UInt(8.W)))
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val offset_in   = Vec(const.EXEC.primitive_number, Input(UInt(const.PHV.offset_width.W)))
            val length_in   = Vec(const.EXEC.primitive_number, Input(UInt(const.PHV.offset_width.W)))

            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))
            val field_out   = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_width.W)))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val args = Reg(Vec(const.EXEC.args_length, UInt(8.W)))
        args := io.args_in

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in
        io.vliw_out := vliw

        val offset = Reg(Vec(const.EXEC.primitive_number, UInt(const.PHV.offset_width.W)))
        val length = Reg(Vec(const.EXEC.primitive_number, UInt(const.PHV.offset_width.W)))
        offset := io.offset_in
        length := io.length_in

        for (j <- 0 until const.EXEC.primitive_number) {
            val opcode      = PRIM.operation(vliw(j))
            val parameter_1 = PRIM.parameter_1(vliw(j))
            val parameter_2 = PRIM.parameter_2(vliw(j))
            
            io.field_out(j) := 0.U(const.EXEC.max_field_length.W)
            when (phv.is_valid_processor) {
                val from_header = length(j) =/= 0.U(const.PHV.offset_width.W)
                when (from_header) { // addi or copy
                    val field_offset = offset(j)
                    val field_length = length(j)
                    val bytes   = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                    for (k <- 0 until const.EXEC.max_field_length) {
                        val local_offset = k.U(const.PHV.offset_width.W)
                        val total_offset = field_offset + local_offset
                        when (local_offset < field_length) {
                            bytes(k) := phv.data(total_offset)
                        } .otherwise {
                            bytes(k) := 0.U(8.W)
                        }
                    }
                    io.field_out(j) := bytes.reduce(Cat(_, _))
                } .otherwise {
                    when (PRIM.OPCODE.set === opcode) { // argument
                        val args_offset = PRIM.ARG.offset(parameter_2)
                        val args_length = PRIM.ARG.length(parameter_2)
                        val bytes = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                        for (k <- 0 until const.EXEC.max_field_length) {
                            val local_offset = k.U(const.PHV.offset_width.W)
                            val total_offset = args_offset + local_offset
                            when (local_offset < args_length) {
                                bytes(k) := args(total_offset)
                            } .otherwise {
                                bytes(k) := 0.U(8.W)
                            }
                        }
                        io.field_out(j) := bytes.reduce(Cat(_, _))
                    } .otherwise {                       // immediate number, seti or goto
                        val imm = parameter_2
                        io.field_out(j) := Cat(Fill(const.EXEC.max_field_width-PRIM.parameter_width, imm(PRIM.parameter_width-1)), imm)
                    }
                }
            }
        }
    }

    // pipeline level 4
    // ALU
    class PrimitiveALU extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val field_in    = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_width.W)))
            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))
            val field_out   = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_width.W)))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in
        io.vliw_out := vliw

        val field = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        field := io.field_in

        for (j <- 0 until const.EXEC.primitive_number) {
            val opcode      = PRIM.operation(vliw(j))
            val parameter_1 = PRIM.parameter_1(vliw(j))
            val parameter_2 = PRIM.parameter_2(vliw(j))

            when (phv.is_valid_processor && PRIM.OPCODE.addi === opcode) {
                val imm = Cat(Fill(const.EXEC.max_field_width-PRIM.parameter_width, parameter_2(PRIM.parameter_width-1)), parameter_2)
                io.field_out(j) := field(j) + imm
            } .otherwise {
                io.field_out(j) := field(j)
            }
        }
    }

    // pipeline level 5
    // calculate offset & length
    class PrimitiveGetWriteBackOffset extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val field_in    = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_width.W)))
            val offset_out  = Vec(const.EXEC.primitive_number, Output(UInt(const.PHV.offset_width.W)))
            val length_out  = Vec(const.EXEC.primitive_number, Output(UInt(const.PHV.offset_width.W)))
            val field_out   = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_width.W)))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in

        val field = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        field := io.field_in
        io.field_out := field

        for (j <- 0 until const.EXEC.primitive_number) {
            when (phv.is_valid_processor) {
                val opcode      = PRIM.operation(vliw(j))
                val parameter_1 = PRIM.parameter_1(vliw(j)) // always = dst field
                val parameter_2 = PRIM.parameter_2(vliw(j))

                val field_header_id       = PRIM.FIELD.header_id(parameter_1)
                val field_internal_offset = PRIM.FIELD.internal_offset(parameter_1)
                val field_length          = PRIM.FIELD.length(parameter_1)
                val field_header_offset   = const.PHV.offset(phv.header(field_header_id))
                val field_offset          = field_header_offset + field_internal_offset

                io.offset_out(j) := field_offset
                when (PRIM.OPCODE.goto === opcode) {
                    io.length_out(j) := 0.U(const.PHV.offset_width.W)
                } .otherwise {
                    io.length_out(j) := field_length
                }
            } .otherwise {
                io.offset_out(j) := 0.U(const.PHV.offset_width.W)
                io.length_out(j) := 0.U(const.PHV.offset_width.W)
            }
        }
    }

    // pipeline level 6
    // write back
    class PrimitiveWriteBack extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val offset_in   = Vec(const.EXEC.primitive_number, Input(UInt(const.PHV.offset_width.W)))
            val length_in   = Vec(const.EXEC.primitive_number, Input(UInt(const.PHV.offset_width.W)))
            val field_in    = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_width.W)))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val offset = Reg(Vec(const.EXEC.primitive_number, UInt(const.PHV.offset_width.W)))
        val length = Reg(Vec(const.EXEC.primitive_number, UInt(const.PHV.offset_width.W)))
        val field  = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        offset := io.offset_in
        length := io.length_in
        field  := io.field_in

        when (phv.is_valid_processor) {
            for (j <- 0 until const.EXEC.primitive_number) {
                val field_length = length(j)
                val field_offset = offset(j)
                val field_content = field(j)
                when (field_length === 0.U(const.PHV.offset_width.W)) {
                    io.pipe.phv_out.next_processor_id := field_content
                } .otherwise {
                    for (k <- 0 until const.EXEC.max_field_length) {
                        val field_byte   = field_content(const.EXEC.max_field_width-8*k-1, const.EXEC.max_field_width-8*(k+1))
                        val local_offset = k.U(const.PHV.offset_width.W)
                        val total_offset = field_offset + local_offset
                        when (local_offset < field_length) {
                            io.pipe.phv_out.data(total_offset) := field_byte
                        }
                    }
                }
            }
        }
    }

    // pipeline
    val pipe1 = Module(new ActionReader)
    val pipe2 = Module(new PrimitiveGetOffset)
    val pipe3 = Module(new PrimitiveGetSource)
    val pipe4 = Module(new PrimitiveALU)
    val pipe5 = Module(new PrimitiveGetWriteBackOffset)
    val pipe6 = Module(new PrimitiveWriteBack)

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
    pipe3.io.offset_in   <> pipe2.io.offset_out
    pipe3.io.length_in   <> pipe2.io.length_out

    pipe4.io.pipe.phv_in <> pipe3.io.pipe.phv_out
    pipe4.io.vliw_in     <> pipe3.io.vliw_out
    pipe4.io.field_in    <> pipe3.io.field_out

    pipe5.io.pipe.phv_in <> pipe4.io.pipe.phv_out
    pipe5.io.vliw_in     <> pipe4.io.vliw_out
    pipe5.io.field_in    <> pipe4.io.field_out

    pipe6.io.pipe.phv_in <> pipe5.io.pipe.phv_out
    pipe6.io.field_in    <> pipe5.io.field_out
    pipe6.io.offset_in   <> pipe5.io.offset_out
    pipe6.io.length_in   <> pipe5.io.length_out

    pipe6.io.pipe.phv_out <> io.pipe.phv_out
}

object EXE_OBJ extends App {
    Driver.execute(args, () => new Executor)
}