package gcd

import chisel3._
import chisel3.util._

class Matcher(log_logic_entry_len: Int, logic_start_addr: Int) extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))
        val parsed_header = Input(Vec(const.num_headers, UInt(const.data_width.W)))

        val mem = Flipped(new MemInterface)
        val ready    = Output(Bool())
        val is_match = Output(Bool())
        val flow_val = Output(Vec(const.max_val_len, UInt(const.byte_width.W)))

        val mod = new MatcherModify
    })

    val ready    = RegInit(false.B)
    val is_match = RegInit(false.B)
    io.ready     := ready
    io.is_match  := is_match
    val flow_val = Reg(Vec(const.max_val_len, UInt(const.byte_width.W)))
    for (j <- 0 until const.max_val_len) {
        io.flow_val(j) := flow_val(j)
    }

    val match_header_id = RegInit(0.U(4.W))
    val match_key_off   = RegInit(0.U(6.W))
    val match_key_len   = RegInit(0.U(6.W))
    val match_val_len   = RegInit(0.U(6.W))
    val mem_cnt         = RegInit(0.U(6.W))

    val mem_addr = RegInit(0.U(const.addr_width.W))

    val key_data = Reg(Vec(const.max_hash_len, UInt(const.byte_width.W)))

    val hash_start = RegInit(false.B)
    val hash_key = Cat(
        key_data(0), key_data(1), key_data(2), key_data(3),
        key_data(4), key_data(5), key_data(6), key_data(7)
    )
    val hash = Module(new Hash)
    hash.io.start    := hash_start
    hash.io.key      := hash_key

    val state = RegInit(0.U(3.W))

    val ce = RegInit(false.B)

    io.mem.ce    := ce
    io.mem.we    := false.B
    io.mem.addr  := mem_addr
    io.mem.sel   := 1.U(const.addr_width.W)
    io.mem.wdata := const.zero_word

    when (state === 0.U(3.W)) { // free
        when (io.mod.start) {
            match_header_id := io.mod.header_id
            match_key_off   := io.mod.key_off
            match_key_len   := io.mod.key_len
            match_val_len   := io.mod.val_len
        } .otherwise {
            when (io.start) {
                ready    := false.B
                is_match := false.B
                state    := 1.U(3.W)

                hash_start := true.B
                for (j <- 0 until const.max_hash_len) {
                    key_data(j) := Mux(
                        j.U(6.W) < match_key_len,
                        io.packet_header(io.parsed_header(match_header_id) + match_key_off + j.U(6.W)),
                        0.U(8.W)
                    )
                }
            }
        }
    }

    when (state === 1.U(3.W)) { // hash
        when (hash.io.hash_ready) {
            hash_start := false.B
            ce         := true.B
            mem_addr   := logic_start_addr.U(const.addr_width.W) + Cat(hash.io.hash_val, 0.U(log_logic_entry_len.W))
            mem_cnt    := 0.U(6.W)
            state      := 2.U(3.W)
        }
    }

    when (state === 2.U(3.W)) { // load_key
        when (mem_cnt === match_key_len) {
            mem_cnt := 0.U(6.W)
            state   := 3.U(3.W)
        } .otherwise {
            when (io.mem.rdata(7,0) === key_data(mem_cnt)) {
                mem_addr    := mem_addr + 1.U(const.addr_width.W)
                mem_cnt     := mem_cnt  + 1.U(6.W)
            } .otherwise {
                ce      := false.B
                ready   := true.B
                is_match := false.B
                state   := 4.U(3.W)
            }
        }
    }

    when (state === 3.U(3.W)) { // load_val
        when (mem_cnt === match_val_len) {
            ce := false.B
            ready := true.B
            is_match := true.B
            state := 4.U(3.W)
        } .otherwise {
            flow_val(mem_cnt) := io.mem.rdata(7,0)
            mem_addr    := mem_addr + 1.U(const.addr_width.W)
            mem_cnt     := mem_cnt  + 1.U(6.W)
        }
    }

    when (state === 4.U(3.W)) { // done
        when (!io.start) {
            state := 0.U(3.W)
        }
    }
}