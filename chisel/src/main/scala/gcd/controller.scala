package gcd

import chisel3._
import chisel3.util._

class Controller extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))

        val mod_proc = Input(UInt(3.W))
        val mod = new ProcessorModify

        val ready = Output(Vec(const.processor_number, Bool()))
    })

    val mem = for (j <- 0 until const.sram_number) yield {
        val exe = Module(new SRAM(1024, 10, 32))
        exe
    }

    val encoders = for (j <- 0 until const.processor_number) yield {
        val exe = Module(new Encoder83)
        exe
    }

    // 进来的包进到proc 0
    val proc = for (j <- 0 until const.processor_number) yield {
        val exe = Module(new ProcessorController)
        exe.io.end := false.B
        if (j % 2 == 0) {
            exe.io.mem <> mem(j>>1).io.mem_a
        } else {
            exe.io.mem <> mem(j>>1).io.mem_b
        }
        if (j == 0) {
            exe.io.update := io.start && exe.io.ready
            exe.io.packet_header := io.packet_header
        } else {
            exe.io.update := false.B
            for (k <- 0 until const.header_max_length) {
                exe.io.packet_header(k) := 0.U(const.byte_width.W)
            }
        }
        exe
    }

    for (j <- 0 until const.processor_number) {
        when (io.mod_proc === j.U(3.W)) {
            proc(j).io.mod := io.mod
        } .otherwise {
            proc(j).io.mod.start := false.B
            proc(j).io.mod.hit_action_addr := 0.U(const.addr_width.W)
            proc(j).io.mod.miss_action_addr := 0.U(const.addr_width.W)
            proc(j).io.mod.ps_mod.start := false.B
            proc(j).io.mod.ps_mod.header_id := 0.U(const.log_num_headers.W)
            proc(j).io.mod.ps_mod.header_length := 0.U(const.data_width.W)
            proc(j).io.mod.ps_mod.next_tag_start := 0.U(const.data_width.W)
            proc(j).io.mod.ps_mod.next_tag_length := 0.U(const.data_width.W)
            for (k <- 0 until const.next_table_size) {
                proc(j).io.mod.ps_mod.next_table(k) := 0.U(const.data_width.W)
            }
            proc(j).io.mod.mt_mod.start := false.B
            proc(j).io.mod.mt_mod.header_id := 0.U(4.W)
            proc(j).io.mod.mt_mod.key_off := 0.U(6.W)
            proc(j).io.mod.mt_mod.key_len := 0.U(6.W)
            proc(j).io.mod.mt_mod.val_len := 0.U(6.W)
            proc(j).io.mod.ex_mod.start := false.B
            for (k <- 0 until const.max_op_num) {
                proc(j).io.mod.ex_mod.ops(k) := 0.U(const.quad_width.W)
            }
        }
    }

    // next(j)(k) = proc k处理完成，将包即将发送给proc j
    val next_table = for (j <- 0 until const.processor_number) yield {
        val exe = Wire(Vec(const.processor_number, Bool()))
        for (k <- 0 until const.processor_number) {
            exe(k) := proc(k).io.ready && proc(k).io.next_en && proc(k).io.next_proc === j.U(3.W)
        }
        Cat(exe(7), exe(6), exe(5), exe(4), exe(3), exe(2), exe(1), exe(0))
    }

    for (j <- 0 until const.processor_number) {
        encoders(j).io.input := next_table(j)
    }

    for (j <- 0 until const.processor_number) {
        when (encoders(j).io.valid && proc(j).io.ready) {
            val end_proc = encoders(j).io.output
            proc(j).io.update := true.B
            proc(j).io.end := true.B
            for (k <- 0 until const.processor_number) {
                when (k.U(3.W) === end_proc) {
                    proc(j).io.packet_header := proc(k).io.next_header
                }
            }
        }
        io.ready(j) := proc(j).io.ready
    }

}

object CTRL extends App {
    Driver.execute(args, () => new Controller)
}