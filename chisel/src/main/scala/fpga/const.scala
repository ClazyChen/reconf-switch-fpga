package fpga

import chisel3._
import chisel3.util._

// length / offset means by Byte
// width  means by bit

object const {

    val max_header_number = 16

    val mau_id_width = 3
    val mau_number_in_parser = 8

    object PHV {
        val total_data_length  = 96
        val header_data_length = 64
        val metadata_offset    = header_data_length
        val metadata_length    = total_data_length - header_data_length

        val extracted_info_width   = 16
        val extracted_offset_width = extracted_info_width >> 1
        val extracted_length_width = extracted_offset_width

        val offset : UInt => UInt = x => x(extracted_info_width-1, extracted_length_width)
        val length : UInt => UInt = x => x(extracted_length_width, 0)

        val current_state_width  = 8
        val current_offset_width = 8
        val transition_field_width = 16
    }

    object SRAM {
        val data_width = 64
        val address_width = 8
        val capacity = 1 << address_width
    }
}