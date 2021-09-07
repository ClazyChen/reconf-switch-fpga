package fpga

import chisel3._
import chisel3.util._

// do not implement pipeline clearing
class ParserPISAModify extends Bundle {
    val en = Input(Bool())
    val last_mau_id_mod = Input(Bool())
    val last_mau_id     = Input(UInt(4.W))
    
    val cs = Input(UInt(3.W))
    val module_mod = new ParseModuleModify
}

// Parser containing 16 MAUs
class ParserPISA extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val mod    = new ParserPISAModify
    })

    // configuration
    val last_mau_id = Reg(UInt(4.W))
    // MAU[last_id+1:] are disabled
    // from MAU[last_id], directly go to Matcher
    // if last_mau_id === -1(1111) then directly connect phv_in & phv_out

    // MAUs Pipeline
    val mau = for (j <- 0 until 8) yield {
        val exe = Module(new ParseModule)
        exe
    }

    // allow no MAU is used and pass directly
    io.pipe.phv_out := io.pipe.phv_in
    
    for (j <- 0 until 8) {
        if (j == 0) {
            mau(j).io.pipe.phv_in <> io.pipe.phv_in
        } else {
            mau(j).io.pipe.phv_in <> mau(j-1).io.pipe.phv_out
            when (j.U(3.W) === last_mau_id) {    // goto matcher
                io.pipe.phv_out   := mau(j).io.pipe.phv_out
            }
        }
        mau(j).io.mod := io.mod.module_mod
    }

    // modify
    when (io.mod.en) {
        when (io.mod.last_mau_id_mod) {
            last_mau_id := io.mod.last_mau_id
        }
        for (j <- 0 until 8) {
            val mod_j = io.mod.cs === j.U(3.W)
            mau(j).io.mod.sram_w.en    := io.mod.module_mod.sram_w.en    && mod_j
            mau(j).io.mod.state_id_mod := io.mod.module_mod.state_id_mod && mod_j
        }
    }
}

// class ParserPISAModify extends Bundle {
//     val sram_w_cs = Input(UInt(const.config_id_width.W))
//     val sram_w    = new WritePort
// }

// // Parser containing only 1 SRAM
// // without pipeline
// // each port has a unique PISA Parser
// class ParserPISA extends Module {
//     val io = IO(new Bundle {
//         val pipe   = new Pipeline
//         val mod    = new ParserPISAModify
//     })

//     val is_processing = RegInit(false.B)
//     val phv = Reg(new PHV)
//     io.pipe.phv_out := phv
//     when (is_processing) {
//         io.pipe.phv_out.valid := false.B
//     } .otherwise {
//         phv := io.pipe.phv_in
//     }

//     val action_stage = RegInit(false.B)
//     val rdata        = Reg(UInt(const.SRAM.data_width.W))

//     // the only sram
//     val mem = for (j <- 0 until const.config_number) yield {
//         val config_id       = j.U(const.config_id_width.W)
//         val config_to_write = io.mod.sram_w_cs === config_id
//         val config_to_use   = phv.next_config_id === config_id
//         val match_key       = phv.parse.transition_field
//         val exe = Module(new SRAM)
//         exe.io.w      := io.mod.sram_w
//         exe.io.w.en   := io.mod.sram_w.en && config_to_write
//         exe.io.r.en   := config_to_use && phv.valid && !action_stage
//         exe.io.r.addr := match_key(15,8) + match_key(7,0)  // omit hash collision
//         when (exe.io.r.en) {
//             rdata := exe.io.r.data
//         }
//         exe
//     }
    
//     when (phv.valid) {
//         is_processing := true.B
//         when (action_stage) {
//             // action stage
//             val match_val = rdata
//             val match_val_stage_id        = match_val(63,56) // 1B for stage id
//             val match_val_transition_field_header_id = match_val(55,48) // the header containing the transition_field
//             val match_val_transition_field_mask      = match_val(47,32) // transition_field_mask
//             // if the transition_field is only 1B, match_val_mask = 0x00FF
//             val match_val_transition_field_internal_offset = match_val(31,24) // internal_offset for transition_field
//             val match_val_header_length   = match_val(23,16) // header_length by Byte
//             val match_val_header_id       = match_val(15,8)  // header_id (actually 4 bits)
//             val match_val_next_state      = match_val(7,0)   // next_state

//             action_stage := false.B // anyway, finish action stage

//             when (phv.parse.current_state =/= match_val_stage_id) {
//                 // not hit, means ending of parsing
//                 is_processing := false.B
//             } .otherwise {
//                 phv.parse.current_state  := match_val_next_state
//                 phv.parse.current_offset := phv.parse.current_offset + match_val_header_length

//                 val transition_field_header_offset = const.PHV.offset(phv.header(match_val_transition_field_header_id))
//                 val transition_field_offset = transition_field_header_offset + match_val_transition_field_internal_offset
//                 val transition_field_raw_data = Cat(
//                     phv.data(transition_field_offset + 1.U),
//                     phv.data(transition_field_offset)
//                 )
//                 val transition_field = transition_field_raw_data ^ match_val_transition_field_mask
//                 phv.parse.transition_field := transition_field

//                 phv.header(match_val_header_id) := Cat(
//                     phv.parse.current_offset,
//                     match_val_header_length
//                 )
//             }
//         } .otherwise {
//             // match stage       
//         }
//     } .otherwise {
//         is_processing := false.B
//     }
// }