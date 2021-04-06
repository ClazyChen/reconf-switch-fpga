package gcd

import chisel3._
import chisel3.util._

class MemInterface extends Bundle {
    val ce = Input(Bool())
    val we = Input(Bool())
    val addr = Input(UInt(const.addr_width.W))
    val sel  = Input(UInt(4.W))
    val wdata = Input(UInt(const.data_width.W))
    val rdata = Output(UInt(const.data_width.W))
}

class ProcessorModify extends Bundle {
    val start = Input(Bool())
    val hit_action_addr = Input(UInt(const.addr_width.W))
    val miss_action_addr = Input(UInt(const.addr_width.W))
    val ps_mod = new ParserModify
    val mt_mod = new MatcherModify
    val ex_mod = new ExecuterModify
}

class ParserModify extends Bundle {
    val start = Input(Bool())
    val header_id      = Input(UInt(const.log_num_headers.W))
    val header_length  = Input(UInt(const.data_width.W))
    val next_tag_start = Input(UInt(const.data_width.W))
    val next_tag_length = Input(UInt(const.data_width.W))
    val next_table     = Input(Vec(const.next_table_size, UInt(const.data_width.W)))
}

class MatcherModify extends Bundle {
    val start = Input(Bool())
    val header_id      = Input(UInt(4.W))
    val key_off        = Input(UInt(6.W))
    val key_len        = Input(UInt(6.W))
    val val_len        = Input(UInt(6.W))
}

class ExecuterModify extends Bundle {
    val start = Input(Bool())
    val ops   = Input(Vec(const.max_op_num, UInt(const.quad_width.W)))
}