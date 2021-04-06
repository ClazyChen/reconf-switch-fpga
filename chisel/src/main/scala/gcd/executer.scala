package gcd

import chisel3._
import chisel3.util._

class Executer extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))
        val parsed_header = Input(Vec(const.num_headers, UInt(const.data_width.W)))
        val op_start_cnt  = Input(UInt(const.addr_width.W))
        val args          = Input(Vec(const.max_val_len, UInt(const.byte_width.W)))
        
        val ready         = Output(Bool())
        val mod = new ExecuterModify
    })

    val ready    = RegInit(false.B)
    io.ready     := ready

    val ops = Reg(Vec(const.max_op_num, UInt(const.quad_width.W)))

    val inst_cnt = RegInit(0.U(const.log_max_op_num.W))
    val inst = RegInit(0.U(const.quad_width.W))
    val packet_header = Reg(Vec(const.header_max_length, UInt(const.byte_width.W)))

    val state = RegInit(0.U(3.W))

    val opcode = inst(63,58)
    val f1_hdr = inst(31,28)
    val f1_off = inst(27,22)
    val f1_len = inst(21,16)
    val f2_hdr = inst(15,12)
    val f2_off = inst(11,6)
    val f2_len = inst(5,0)

    val f1_start = io.parsed_header(f1_hdr) + f1_off
    val f2_start = io.parsed_header(f2_hdr) + f2_off
    val add_delta = Cat(
        Fill(6, inst(57)),
        inst(57, 32)
    )

    val cksum_start = RegInit(false.B)
    val cksum_field_start = Reg(UInt(const.addr_width.W))
    val cksum_field_len   = Reg(UInt(const.data_width.W))
    val cksum = Module(new CheckSum)
    cksum.io.start := cksum_start
    cksum.io.packet_header := packet_header
    cksum.io.field_start := cksum_field_start
    cksum.io.field_len := cksum_field_len

    when (state === 0.U(2.W)) { // free
        when (io.mod.start) {
            ops := io.mod.ops
        } .otherwise {
            when (io.start) {
                inst := ops(io.op_start_cnt)
                inst_cnt := io.op_start_cnt + 1.U(const.quad_width.W)
                packet_header := io.packet_header
                state := 1.U(2.W)
            }
        }
    }

    when (state === 1.U(2.W)) {
        when (opcode === const.opcode_nop) {
            ready := true.B
            state := 2.U(2.W)
        }
        when (opcode === const.opcode_cksum) {
            when (cksum.io.ready) {
                cksum_start := false.B
                packet_header(f2_start) := cksum.io.value(7,0)
                packet_header(f2_start + 1.U(6.W)) := cksum.io.value(15,8)
                inst := ops(inst_cnt)
                inst_cnt := inst_cnt + 1.U(const.log_max_op_num.W)
            } .otherwise {
                cksum_start := true.B
                cksum_field_start := f1_start
                cksum_field_len   := f1_len
                packet_header(f2_start) := 0.U(const.byte_width.W)
                packet_header(f2_start + 1.U(6.W)) := 0.U(const.byte_width.W)
            }
        }
        when (opcode === const.opcode_add) {
            packet_header(f1_start) := packet_header(f1_start) + add_delta
            inst := ops(inst_cnt)
            inst_cnt := inst_cnt + 1.U(const.log_max_op_num.W)
        }
        when (opcode === const.opcode_copy_field) {
            val hdr_param = f2_hdr === const.hdr_param
            for (i <- 0 until 64) {
                packet_header(f1_start + i.U(6.W)) := Mux(
                    hdr_param,
                    io.args(f2_off + i.U(6.W)),
                    packet_header(f2_start + 1.U(6.W))
                )
            }
            inst := ops(inst_cnt)
            inst_cnt := inst_cnt + 1.U(const.log_max_op_num.W)
        }
    }
    
    when (state === 2.U(2.W)) {
        when (!io.start) {
            state := 0.U(2.W)
        }
    }
}