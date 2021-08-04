package fpga

import chisel3._
import chisel3.util._

class PHVParsingState extends Bundle {
    val current_state    = UInt(const.PHV.current_state_width.W)
    val current_offset   = UInt(const.PHV.current_offset_width.W)
    val transition_field = UInt(const.PHV.transition_field_width.W)
}

class PHV extends Bundle {
    val data = Vec(const.PHV.total_data_length, UInt(8.W))
    // higher 8 bits : offset; lower 8 bits : length
    val header = Vec(const.max_header_number, UInt(const.PHV.extracted_info_width.W))
    val parse = new PHVParsingState
}

class Pipeline extends Bundle {
    val phv_in  = Input(new PHV)
    val phv_out = Output(new PHV)
}