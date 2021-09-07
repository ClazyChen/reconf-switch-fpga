package fpga

import chisel3._
import chisel3.util._
import chisel3.util.random._

class InPort extends Module {
    val io = IO(new Bundle {
        val phv_out = Output(new PHV)
    })

    val rand = for (j <- 0 until const.PHV.header_data_length / 2) yield {
        val exe = LFSR(16)
        exe
    }

    for (j <- 0 until const.PHV.header_data_length / 2) {
        io.phv_out.data(j*2)   := rand(j)(15,8)
        io.phv_out.data(j*2+1) := rand(j)(7,0)
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
   // io.phv_out.valid                  := true.B
}