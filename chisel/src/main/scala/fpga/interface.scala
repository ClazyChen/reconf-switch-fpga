package fpga

import chisel3._
import chisel3.util._

class ParseModuleModify extends Bundle {
    val state_id_mod = Input(Bool())
    val state_id     = Input(UInt(const.PHV.current_state_width.W))
    val sram_w       = new WritePort
}

// do not implement pipeline clearing
class ParserModify extends Bundle {
    val en = Input(Bool())
    val last_mau_id_mod = Input(Bool())
    val last_mau_id     = Input(UInt(const.mau_id_width.W))
    
    val cs = Input(UInt(const.mau_number_in_parser.W))
    val module_mod = new ParseModuleModify
}