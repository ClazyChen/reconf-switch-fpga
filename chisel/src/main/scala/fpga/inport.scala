package fpga

import chisel3._
import chisel3.util._

class InPort extends Module {
    val io = IO(new Bundle {
        val en      = Input(Bool())
        val last = Input(Bool())
        val data    = Input(UInt((const.PHV.header_data_length*8).W))
        val phv_out = Output(new PHV)
    })

    for (j <- 0 until const.PHV.header_data_length) {
        io.phv_out.data(j) := io.data(const.PHV.header_data_length*8-1-j*8, const.PHV.header_data_length*8-(j+1)*8)
    }

    for (j <- const.PHV.header_data_length until const.PHV.total_data_length) {
        io.phv_out.data(j) := 0.U(8.W)
    }

    for (j <- 0 until const.max_header_number) {
        io.phv_out.header(j) := 0.U(const.PHV.extracted_info_width.W)
    }

    io.phv_out.parse.current_state    := 0.U(const.PHV.current_state_width.W)
    io.phv_out.parse.current_offset   := 0.U(const.PHV.current_offset_width.W)
    io.phv_out.parse.transition_field := 0.U(const.PHV.transition_field_width.W)
    io.phv_out.next_processor_id      := 0.U(const.processor_id_width.W)
    io.phv_out.next_config_id         := 0.U(const.config_id_width.W)
    io.phv_out.is_valid_processor     := false.B
    io.phv_out.valid                  := io.en
    io.phv_out.last                   := io.last
}