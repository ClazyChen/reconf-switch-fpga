package gcd

import chisel3._
import chisel3.util._

class Parser extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))
        val ready = Output(Bool())
        val parsed_header = Output(Vec(const.num_headers, UInt(const.data_width.W)))

        val mod = new ParserModify
    })

    // parser information
    val header_lengths  = Reg(Vec(const.num_headers, UInt(const.data_width.W)))
    val next_tag_starts = Reg(Vec(const.num_headers, UInt(const.data_width.W)))
    val next_tag_lengths = Reg(Vec(const.num_headers, UInt(const.data_width.W)))
    val next_table = Reg(Vec(const.num_headers * const.next_table_size, UInt(const.data_width.W)))

    val header_id   = RegInit(0.U(const.log_num_headers.W))
    val header_addr = RegInit(0.U(const.addr_width.W))
    val next_tag   = RegInit(0.U(const.half_width.W))
    val state      = RegInit(0.U(2.W))

    val ready         = RegInit(false.B)
    val parsed_header = Reg(Vec(const.num_headers, UInt(const.data_width.W)))
    io.ready         := ready
    io.parsed_header := parsed_header

    when (state === 0.U(2.W)) { // free
        when (io.mod.start) {
            header_lengths(io.mod.header_id)   := io.mod.header_length
            next_tag_starts(io.mod.header_id)  := io.mod.next_tag_start
            next_tag_lengths(io.mod.header_id) := io.mod.next_tag_length
            for (j <- 0 until const.next_table_size) {
                next_table(Cat(j.U(const.log_next_table_size.W), io.mod.header_id)) := io.mod.next_table(j)
            }
        } .otherwise {
            when (io.start) {
                state := 1.U(2.W)
                ready := false.B
                for (j <- 0 until const.num_headers) {
                    parsed_header(j) := 0.U(const.data_width.W)
                }
                header_id := 0.U(const.log_num_headers.W)
                header_addr := 0.U(const.addr_width.W)
                next_tag := Cat(
                    io.packet_header(next_tag_starts(0)),
                    io.packet_header(next_tag_starts(0) + 1.U(const.next_tag_width.W))
                )
            }
        }
    }

    when (state === 1.U(2.W)) { // parsing
        for (j <- 0 until const.num_headers) {
            when (header_id === j.U(const.log_num_headers.W)) {
                parsed_header(j) := header_addr
                header_addr := header_addr + header_lengths(j)
                state := 2.U(2.W)
                ready := true.B
                for (k <- 0 until const.next_table_size) {
                    val index = Cat(k.U(const.log_next_table_size.W), j.U(const.log_num_headers.W))
                    val item  = next_table(index)
                    val next_header_id = const.next_header_id(item)
                    when (next_tag === const.next_tag_val(item)) {
                        header_id := next_header_id
                        next_tag  := io.packet_header(header_addr + header_lengths(j) + next_header_id)
                    }
                }
            }
        }
    }

    when (state === 2.U(2.W) && !io.start) {
        state := 0.U(2.W)
    }
}