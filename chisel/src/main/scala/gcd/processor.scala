package gcd

import chisel3._
import chisel3.util._

class Processor extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))

        val mem = Flipped(new MemInterface)
        val ready = Output(Bool())
        
        val mod = new ProcessorModify
    })

    val hit_action_addr = RegInit(0.U(const.addr_width.W))
    val miss_action_addr = RegInit(0.U(const.addr_width.W))

    val state = RegInit(0.U(3.W))
    val ready = RegInit(false.B)
    io.ready := ready

    val parser = Module(new Parser)
    val matcher = Module(new Matcher(4, 128))
    val executer = Module(new Executer)

    parser.io.start := false.B
    matcher.io.start := false.B
    executer.io.start := false.B

    parser.io.packet_header <> io.packet_header
    matcher.io.packet_header <> io.packet_header
    executer.io.packet_header <> io.packet_header

    matcher.io.parsed_header <> parser.io.parsed_header
    executer.io.parsed_header <> parser.io.parsed_header
    parser.io.mod <> io.mod.ps_mod
    matcher.io.mod <> io.mod.mt_mod
    matcher.io.mem <> io.mem
    matcher.io.flow_val <> executer.io.args
    executer.io.mod <> io.mod.ex_mod

    executer.io.op_start_cnt := Mux(matcher.io.is_match, hit_action_addr, miss_action_addr)

    when (state === 0.U(3.W)) { // free
        when (io.mod.start) {
            hit_action_addr := io.mod.hit_action_addr
            miss_action_addr := io.mod.miss_action_addr
        } .otherwise {
            when (io.start) {
                ready := false.B
                state := 1.U(3.W)
                parser.io.start := true.B
            }
        }
    }

    when (state === 1.U(3.W)) {
        when (parser.io.ready) {
            matcher.io.start := true.B
            state := 2.U(3.W)
        }
    }

    when (state === 2.U(3.W)) {
        when (matcher.io.ready) {
            executer.io.start := true.B
            state := 3.U(3.W)
        }
    }

    when (state === 3.U(3.W)) {
        when (executer.io.ready) {
            ready := true.B
            state := 4.U(3.W)
        }
    }

    when (state === 4.U(3.W)) {
        when (!io.start) {
            state := 0.U(3.W)
        }
    }

}
