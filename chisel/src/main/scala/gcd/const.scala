package gcd

import chisel3._
import chisel3.util._

object const {
    val processor_number = 8
    val sram_number = 4
    val log_processor_number = 3
    val log_sram_number = 2

    val byte_width = 8
    val half_width = 16
    val word_width = 32
    val quad_width = 64

    val log_byte_width = 3
    val log_half_width = 4
    val log_word_width = 5
    val log_quad_width = 6

    val zero_byte = 0.U(byte_width.W)
    val zero_half = 0.U(half_width.W)
    val zero_word = 0.U(word_width.W)
    val zero_quad = 0.U(quad_width.W)

    val data_width = word_width
    val addr_width = word_width
    val log_data_width = log_word_width
    val log_addr_width = log_word_width

    val zero_addr  = zero_word

    val num_headers = 2
    val log_num_headers = 1
    val no_header_word = 0xffffffffL.U(word_width.W)
    val next_table_size = 2
    val log_next_table_size = 1
    val no_next_header_word = 0xffffffffL.U(word_width.W)

    val hdr_param = 0xf.U(4.W)

    // parser
    val header_max_length = 64  // count by byte
    val next_tag_width = 6  // log(64)
    val next_tag_val   : UInt => UInt = x => x(31,16)
    val next_header_id : UInt => UInt = x => x(15,0)

    // executer
    val max_op_num  = 16
    val log_max_op_num = 4
    val max_val_len = 16

    val opcode_nop     = 0.U(6.W)
    val opcode_cksum   = 1.U(6.W)
    val opcode_add     = 2.U(6.W)
    val opcode_copy_field = 3.U(6.W)
    val opcode_set_port = 4.U(6.W)
    val opcode_set_multicast = 5.U(6.W)
    val opcode_recirculate = 6.U(6.W)

    // hash
    val max_hash_len = 8
}