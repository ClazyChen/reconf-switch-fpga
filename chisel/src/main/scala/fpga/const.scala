package fpga

import chisel3._
import chisel3.util._

// length / offset means by Byte
// width  means by bit

object const {
    val header_id_width = 4
    val max_header_number = 16

    val mau_id_width = 3
    val mau_number_in_parser = 8

    val processor_id_width = 2
    val processor_number = 4

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

        val offset_width = current_offset_width
    }

    object SRAM {
        val data_width = 64
        val address_width = 8
        val capacity = 1 << address_width

        val sram_number_in_cluster = 8
        val sram_number_width = 4 // log(8+1)
        val processor_number_in_cluster = 4
        val sram_id_width = 3

        val max_sram_width_extend_degree = 2
    }

    object MATCH {
        val match_header_id_width = 8 // real maximum = 15
        val match_internal_offset_width = PHV.offset_width
        val match_key_length_width = 4   // real maximum = 8
        val match_value_length_width = 4 // real maximum = 8

        val match_key_width = 64
        val match_value_width = 64
        val match_data_width = match_key_width + match_value_width

        val max_match_key_length = match_key_width >> 3
        val max_match_value_length = match_value_width >> 3
    }

    object HASH {
        val hash_key_width = MATCH.match_key_width
        val hash_sum_width = 16
        val hash_val_width = SRAM.address_width
        val hash_val_cs_width = SRAM.sram_id_width
    }

    object EXEC {
        val args_width = MATCH.match_value_width - SRAM.address_width
        val args_length = args_width >> 3 // 7
        val sram_number = 2
        val primitive_width = 32
        val primitive_number = sram_number * SRAM.data_width / primitive_width
        val primitive_number_per_sram = primitive_number / sram_number

        val max_field_width = 64
        val max_field_length = max_field_width >> 3
    }
}