package fpga

import chisel3._
import chisel3.util._

class ParseModuleModify extends Bundle {
    val state_id_mod = Input(Bool())
    val state_id     = Input(UInt(const.PHV.current_state_width.W))
    val sram_w_cs    = Input(UInt(const.config_id_width.W))
    val sram_w       = new WritePort
}

// do not implement pipeline clearing
class ParserModify extends Bundle {
    val en = Input(Bool())
    val last_mau_id_mod = Input(Bool())
    val last_mau_id     = Input(UInt(const.mau_id_width.W))
    
    val cs = Input(UInt(const.mau_id_width.W))
    val module_mod = new ParseModuleModify
}

class HashModify extends Bundle {
    val hash_depth_mod = Input(Bool())
    val config_id      = Input(UInt(const.config_id_width.W))
    val hash_depth     = Input(UInt(const.SRAM.sram_id_width.W))
}

class MatchKeyConfig extends Bundle {
    val header_id = UInt(const.MATCH.match_header_id_width.W)
    val internal_offset = UInt(const.MATCH.match_internal_offset_width.W)
    val key_length = UInt(const.MATCH.match_key_length_width.W)
    val val_length = UInt(const.MATCH.match_value_length_width.W)
}

class MatchTableConfig extends Bundle {
    val sram_id_table = Vec(const.SRAM.sram_number_in_cluster, UInt(const.SRAM.sram_id_width.W))
    val table_width = UInt(const.SRAM.sram_number_width.W) // in this model, only 1 and 2 can be chosen
    val table_depth = UInt(const.SRAM.sram_number_width.W)
}

class MatcherModify extends Bundle {
    val en        = Input(Bool())
    val config_id = Input(UInt(const.config_id_width.W))
    val key_mod   = Input(new MatchKeyConfig)
    val table_mod = Input(new MatchTableConfig)
}

class ActionModify extends Bundle {
    val en        = Input(Vec(const.EXEC.sram_number, Bool()))
    val addr      = Input(UInt(const.SRAM.address_width.W))
    val data      = Input(Vec(const.EXEC.sram_number, UInt(const.SRAM.data_width.W)))
}

class ProcessorModify extends Bundle {
    val par_mod   = new ParserModify
    val mat_mod   = new MatcherModify
    val act_mod   = new ActionModify
}

class CrossbarModify extends Bundle {
    val en            = Input(Bool())
    val first_proc_id = Input(UInt(const.processor_id_width.W))
    val last_proc_id  = Input(UInt(const.processor_id_width.W))
    val next_proc_id  = Input(Vec(const.processor_number, UInt(const.processor_id_width.W)))
}

class IPSAModify extends Bundle {
    val proc_mod  = Vec(const.processor_number, new ProcessorModify)
    val xbar_mod  = new CrossbarModify
}