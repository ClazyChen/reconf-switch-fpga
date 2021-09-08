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

    def imm_extend(parameter_2: UInt):UInt = {
        return Cat(Fill(const.EXEC.max_field_width-PRIM.parameter_width, parameter_2(PRIM.parameter_width-1)), parameter_2)
    }

    def imm_extend_with_bias(parameter_2: UInt, bias: Int):UInt = {
        if (bias == 0) {
            return imm_extend(parameter_2)
        } else if (bias == 1) {
            return Cat(Fill(const.EXEC.max_field_width-PRIM.parameter_width-8, parameter_2(PRIM.parameter_width-1)), parameter_2, 0.U(8.W))
        } else if (bias == 2) {
            return Cat(Fill(const.EXEC.max_field_width-PRIM.parameter_width-16, parameter_2(PRIM.parameter_width-1)), parameter_2, 0.U(16.W))
        } else {
            return Cat(parameter_2(7,0), 0.U(24.W))
        }
    }

    // pipeline level 3
    // get src or imm or arg
    // read 64 bits at first, maybe have bias, [7:0] (with bytes)
    // need to right shift {bias} bytes to get the real field
    // anyway, we do not need to do the right shift
    // just reserve the {bias} and wait for write back
    // which means we need to do a left shift for seti/addi operation
    class PrimitiveGetSource extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val args_in     = Vec(const.EXEC.args_length, Input(UInt(8.W)))
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val offset_in   = Vec(const.EXEC.primitive_number, Input(UInt(const.PHV.offset_width.W)))
            val length_in   = Vec(const.EXEC.primitive_number, Input(UInt(const.PHV.offset_width.W)))

            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))
            val field_out   = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_width.W)))
            val mask_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_length.W))) // which bytes are valid?
            val bias_out    = Vec(const.EXEC.primitive_number, Output(UInt(2.W)))
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

            io.field_out(j) := 0.U(const.EXEC.max_field_width.W)
            io.mask_out(j)  := 0.U(const.EXEC.max_field_length.W)
            io.bias_out(j)  := 0.U(2.W)

            when (phv.is_valid_processor) {
                val from_header = length(j) =/= 0.U(const.PHV.offset_width.W)
                when (from_header) { // addi or copy
                    // e.g. offset = 3, length = 4
                    // which means field = [3,4,5,6]
                    // read_offset = 0, bytes(0) = data(7), bytes[7:0] = data[0:7]
                    // bias = 1 (right shift), mask[7:0] = 00011110
                    // the MAX_LENGTH has been changed to 4
                    val field_bytes = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                    val mask        = Wire(Vec(const.EXEC.max_field_length, UInt(1.W)))

                    for (k <- 0 until const.EXEC.max_field_length) {
                        field_bytes(k) := 0.U(8.W)
                        mask(k)        := 0.U(1.W)
                    }
                    val field_offset_aligned = offset(j)(const.PHV.offset_width-1, 2)
                    val bytes   = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                    val ending  = (offset(j) + length(j))(1,0)
                    val bias    = (4.U(4.W) - ending)(1,0)
                    for (k <- 0 until const.EXEC.max_field_length) {
                        val total_offset = Cat(field_offset_aligned, k.U(2.W))
                        bytes(const.EXEC.max_field_length -1- k) := phv.data(total_offset)
                        mask(const.EXEC.max_field_length-1-k) := Mux(
                            k.U(2.W) >= offset(j)(1,0) && (k.U(2.W) < ending || ending === 0.U),
                            1.U(1.W), 0.U(1.W))
                    }
                    field_bytes := bytes
                    io.bias_out(j) := bias
                    io.field_out(j) := field_bytes.reduce(Cat(_, _))
                    io.mask_out(j)  := mask.reduce(Cat(_, _))
                } .otherwise {
                    when (PRIM.OPCODE.set === opcode) { 
                        // from argument, full crossbar
                        val args_offset = PRIM.ARG.offset(parameter_2)
                        val args_length = PRIM.ARG.length(parameter_2)
                        val field_bytes = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                        // e.g. offset = 3, length = 2
                        // which means field = [3,4]
                        // bytes[3:0] = [=,=,3,4]
                        // bytes[0] = offset + length - 1
                        // bytes[1] = offset + length - 2
                        // bytes[2] = offset + length - 3
                        // bytes[3] = offset + length - 4
                        for (l <- 0 until const.EXEC.max_field_length) {
                            field_bytes(l) := 0.U(8.W)
                            for (k <- 0 until const.EXEC.args_length) {
                                val local_offset = k.U(3.W) + args_offset(2,0)
                                when ((l+k+1).U === args_length) {
                                    field_bytes(l) := args(local_offset)
                                }
                            }
                        }
                        io.field_out(j) := field_bytes.reduce(Cat(_, _))
                    }
                    when (PRIM.OPCODE.seti === opcode) {
                        io.field_out(j) := imm_extend(parameter_2)
                    }
                }
            }
        }
    }

    // pipeline level 4
    // shifting
    // addi : field = [src shifted] waiting for add shifted imm
    // copy : field = [src shifted] this stage shift it to dst shift configuration
    // set  : field = [arg]         this stage shift it to dst shift configuration
    // seti : field = [imm]         this stage shift it to dst shift configuration
    // goto : field = []            no operation
    class PrimitiveShiftSource extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val field_in    = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_width.W)))
            val mask_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_length.W))) // which bytes are valid?
            val bias_in     = Vec(const.EXEC.primitive_number, Input(UInt(2.W)))
            
            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))
            val field_out   = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_width.W)))
            val mask_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_length.W)))
            val bias_out    = Vec(const.EXEC.primitive_number, Output(UInt(2.W)))
            val dst_offset_out = Vec(const.EXEC.primitive_number, Output(UInt((const.PHV.offset_width-2).W))) // aligned
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in
        io.vliw_out := vliw

        val field = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        val field_o = Wire(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        field := io.field_in
        field_o := field

        val mask = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_length.W)))
        val bias = Reg(Vec(const.EXEC.primitive_number, UInt(2.W)))
        mask := io.mask_in
        io.mask_out := mask
        bias := io.bias_in
        io.bias_out := bias

        for (j <- 0 until const.EXEC.primitive_number) {
            val opcode      = PRIM.operation(vliw(j))
            val parameter_1 = PRIM.parameter_1(vliw(j))
            val parameter_2 = PRIM.parameter_2(vliw(j))

            io.dst_offset_out(j) := 0.U
            when (phv.is_valid_processor) {
                val bias_p  = bias(j)
                val bias_n  = Wire(UInt(2.W)) // bias_p -> bias_n
                bias_n := bias_p
                val dst = parameter_1
                val header_id       = PRIM.FIELD.header_id(dst)
                val internal_offset = PRIM.FIELD.internal_offset(dst)
                val length          = PRIM.FIELD.length(dst)
                val header_offset   = const.PHV.offset(phv.header(header_id))
                val offset          = header_offset + internal_offset
                io.dst_offset_out(j) := offset(const.PHV.offset_width-1, 2)
                when (opcode === PRIM.OPCODE.copy || opcode === PRIM.OPCODE.seti || opcode === PRIM.OPCODE.set) {
                    val ending      = (offset + length)(1,0)
                    bias_n := (4.U(4.W) - ending)(1,0)
                }
                // bias_p -> bias_n
                when (bias_n =/= bias_p) {
                    val bytes_p = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                    for (k <- 0 until const.EXEC.max_field_length) {
                        bytes_p(k) := field(j)((k+1)*8-1,k*8)
                    }
                    val bytes_n = Wire(Vec(const.EXEC.max_field_length, UInt(8.W)))
                    // right shift step = bias_p - bias_n
                    // N[k] = P[k+bias_p - bias_n]
                    for (k <- 0 until const.EXEC.max_field_length) {
                        bytes_n(k) := 0.U(8.W)
                        for (l <- 0 until const.EXEC.max_field_length) {
                            when (k.U(3.W) + bias_p === l.U(3.W) + bias_n) {
                                bytes_n(k) := bytes_p(l)
                            }
                        }
                    }
                    field_o(j) := bytes_n.reduce(Cat(_, _))
                    io.bias_out(j) := bias_n
                }
            }
        }
        io.field_out := field_o
    }

    // pipeline level 5
    // ALU
    class PrimitiveALU extends Module {
        val io = IO(new Bundle {
            val pipe        = new Pipeline
            val vliw_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val field_in    = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_width.W)))
            val mask_in     = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_length.W)))
            val bias_in     = Vec(const.EXEC.primitive_number, Input(UInt(2.W)))
            val dst_offset_in = Vec(const.EXEC.primitive_number, Input(UInt((const.PHV.offset_width-2).W))) // aligned

            val vliw_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.primitive_width.W)))
            val field_out   = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_width.W)))
            val mask_out    = Vec(const.EXEC.primitive_number, Output(UInt(const.EXEC.max_field_length.W)))
            val dst_offset_out = Vec(const.EXEC.primitive_number, Output(UInt((const.PHV.offset_width-2).W))) // aligned
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in
        io.vliw_out := vliw

        val field = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        field := io.field_in

        val mask = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_length.W)))
        val bias = Reg(Vec(const.EXEC.primitive_number, UInt(2.W)))
        mask := io.mask_in
        io.mask_out := mask
        bias := io.bias_in

        val dst_offset = Reg(Vec(const.EXEC.primitive_number, UInt((const.PHV.offset_width-2).W)))
        dst_offset := io.dst_offset_in
        io.dst_offset_out := dst_offset

        for (j <- 0 until const.EXEC.primitive_number) {
            val opcode      = PRIM.operation(vliw(j))
            val parameter_1 = PRIM.parameter_1(vliw(j))
            val parameter_2 = PRIM.parameter_2(vliw(j))

            when (phv.is_valid_processor) {
                val add1 = field(j)
                val add2 = Wire(UInt(const.EXEC.max_field_width.W))
                add2 := 0.U(const.EXEC.max_field_width.W)
                when (opcode === PRIM.OPCODE.addi) {
                    for (k <- 0 until const.EXEC.max_field_length) {
                        when (k.U === bias(j)) {
                            add2 := imm_extend_with_bias(parameter_2, k)
                        }
                    }
                }
                io.field_out(j) := add1 + add2
            } .otherwise {
                io.field_out(j) := field(j)
            }
        }
    }

    /* disabled
    // pipeline level 5 (original)
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
    */

    // pipeline level 6
    // write back
    class PrimitiveWriteBack extends Module {
        val io = IO(new Bundle {
            val pipe          = new Pipeline
            val vliw_in       = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.primitive_width.W)))
            val field_in      = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_width.W)))
            val mask_in       = Vec(const.EXEC.primitive_number, Input(UInt(const.EXEC.max_field_length.W)))
            val dst_offset_in = Vec(const.EXEC.primitive_number, Input(UInt((const.PHV.offset_width-2).W))) // aligned
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val vliw = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.primitive_width.W)))
        vliw := io.vliw_in
        val field = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_width.W)))
        field := io.field_in
        val mask = Reg(Vec(const.EXEC.primitive_number, UInt(const.EXEC.max_field_length.W)))
        mask := io.mask_in
        val dst_offset = Reg(Vec(const.EXEC.primitive_number, UInt((const.PHV.offset_width-2).W)))
        dst_offset := io.dst_offset_in

        when (phv.is_valid_processor) {
            for (j <- 0 until const.EXEC.primitive_number) {
                val opcode      = PRIM.operation(vliw(j))
                val parameter_1 = PRIM.parameter_1(vliw(j))
                val parameter_2 = PRIM.parameter_2(vliw(j))
                when (opcode === PRIM.OPCODE.goto) {
                    io.pipe.phv_out.next_processor_id := parameter_2(PRIM.parameter_width-1, PRIM.parameter_width-const.header_id_width)
                    io.pipe.phv_out.next_config_id    := parameter_2(const.config_id_width-1, 0)
                } .otherwise {
                    when (opcode =/= PRIM.OPCODE.nop) {
                        // field -> dst_offset masked
                        for (l <- 0 until const.PHV.total_data_length >> 2) {
                            when (dst_offset(j) === l.U(const.PHV.offset_width.W)) {
                                for (k <- 0 until const.EXEC.max_field_length) {
                                    val byte = field(j)((k+1)*8-1, k*8)
                                    when (mask(j)(k)) {
                                        io.pipe.phv_out.data(l*4+3-k) := byte
                                    }
                                }
                            }
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
    val pipe4 = Module(new PrimitiveShiftSource)
    val pipe5 = Module(new PrimitiveALU)
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

    pipe4.io.pipe.phv_in  <> pipe3.io.pipe.phv_out
    pipe4.io.vliw_in      <> pipe3.io.vliw_out
    pipe4.io.field_in     <> pipe3.io.field_out
    pipe4.io.mask_in      <> pipe3.io.mask_out
    pipe4.io.bias_in      <> pipe3.io.bias_out

    pipe5.io.pipe.phv_in <> pipe4.io.pipe.phv_out
    pipe5.io.vliw_in     <> pipe4.io.vliw_out
    pipe5.io.field_in    <> pipe4.io.field_out
    pipe5.io.mask_in     <> pipe4.io.mask_out
    pipe5.io.bias_in     <> pipe4.io.bias_out
    pipe5.io.dst_offset_in <> pipe4.io.dst_offset_out

    pipe6.io.pipe.phv_in <> pipe5.io.pipe.phv_out
    pipe6.io.vliw_in     <> pipe5.io.vliw_out
    pipe6.io.field_in    <> pipe5.io.field_out
    pipe6.io.mask_in     <> pipe5.io.mask_out
    pipe6.io.dst_offset_in <> pipe5.io.dst_offset_out

    pipe6.io.pipe.phv_out <> io.pipe.phv_out
}

object EXE_OBJ extends App {
    Driver.execute(args, () => new Executor)
}