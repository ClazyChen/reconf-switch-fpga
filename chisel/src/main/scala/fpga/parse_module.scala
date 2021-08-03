package fpga

import chisel3._
import chisel3.util._

// A single MAU in parser

// pipeline L1 : matcher
class ParseMatcher extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val sram_w = new WritePort
        val valid  = Input(Bool())   // or pass, do nothing
        val rdata  = Output(UInt(const.SRAM.data_width.W)) // the data read from SRAM
    })

    val en    = Reg(Bool())
    val phv   = Reg(new PHV)
    val rdata = Reg(UInt(const.SRAM.data_width.W))
    phv := io.pipe.phv_in
    en  := io.pipe.en
    io.pipe.phv_out := phv
    io.pipe.ready   := en
    io.rdata        := rdata

    val mem = Module(new SRAM)
    mem.io.w <> io.sram_w

    val match_key = io.pipe.phv_in.parse.transition_field
    mem.io.r.en   := io.valid
    mem.io.r.addr := match_key(15,8) + match_key(7,0)  // omit hash collision
    rdata         := mem.io.r.data
}

// pipeline L2 : action
class ParseAction extends Module {
    val io = IO(new Bundle {
        val pipe  = new Pipeline
        val rdata = Input(UInt(const.SRAM.data_width.W))
        val valid = Input(Bool())   // or pass, do nothing
    })

    val en    = Reg(Bool())
    val phv   = Reg(new PHV)
    phv := io.pipe.phv_in
    en  := io.pipe.en
    io.pipe.phv_out := phv
    io.pipe.ready   := en

    when (io.valid) {
        val match_val = io.rdata
        val match_val_reserved        = match_val(63,56) // 1B reserved
        val match_val_transition_field_header_id = match_val(55,48) // the header containing the transition_field
        val match_val_transition_field_mask      = match_val(47,32) // transition_field_mask
        // if the transition_field is only 1B, match_val_mask = 0x00FF
        val match_val_transition_field_internal_offset = match_val(31,24) // internal_offset for transition_field
        val match_val_header_length   = match_val(23,16) // header_length by Byte
        val match_val_header_id       = match_val(15,8)  // header_id (actually 4 bits)
        val match_val_next_state      = match_val(7,0)   // next_state

        phv.parse.current_state  := match_val_next_state
        phv.parse.current_offset := io.pipe.phv_in.parse.current_offset + match_val_header_length

        val transition_field_header_offset = const.PHV.offset(io.pipe.phv_in.header(match_val_transition_field_header_id))
        val transition_field_offset = transition_field_header_offset + match_val_transition_field_internal_offset
        val transition_field_raw_data = Cat(
            io.pipe.phv_in.data(transition_field_offset + 1.U),
            io.pipe.phv_in.data(transition_field_offset)
        )
        val transition_field = transition_field_raw_data ^ match_val_transition_field_mask
        phv.parse.transition_field := transition_field

        phv.header(match_val_header_id) := Cat(
            io.pipe.phv_in.parse.current_offset,
            match_val_header_length
        )
    }
}

// MAU
class ParseModule extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val mod    = new ParseModuleModify
    })

    val state_id = Reg(UInt(const.PHV.current_state_width.W))
    when (io.mod.state_id_mod) {
        state_id := io.mod.state_id
    }

    val pipe1 = Module(new ParseMatcher)
    val pipe2 = Module(new ParseAction)

    pipe1.io.valid := io.pipe.phv_in.parse.current_state === state_id
    pipe2.io.valid := pipe1.io.pipe.phv_out.parse.current_state === state_id

    io.pipe.phv_in <> pipe1.io.pipe.phv_in
    io.pipe.en     <> pipe1.io.pipe.en
    io.mod.sram_w  <> pipe1.io.sram_w

    pipe1.io.pipe.ready   <> pipe2.io.pipe.en
    pipe1.io.pipe.phv_out <> pipe2.io.pipe.phv_in
    pipe1.io.rdata        <> pipe2.io.rdata

    pipe2.io.pipe.ready   <> io.pipe.ready
    pipe2.io.pipe.phv_out <> io.pipe.phv_out
}

object PAR_MAU_OBJ extends App {
    Driver.execute(args, () => new ParseModule)
}