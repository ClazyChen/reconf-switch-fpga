package gcd

import chisel3._
import chisel3.util._

class CrossBar extends Module {
    val io = IO(new Bundle {
        val ready     = Input(Vec(const.processor_number, Bool()))
        val next_proc = Input(Vec(const.processor_number, UInt(3.W)))

        val end       = Output(Vec(const.processor_number, Bool()))
        val last_proc = Output(Vec(const.processor_number, UInt(2.W)))
    })

    val encoders = for (j <- 0 until const.processor_number) yield {
        val exe = Module(new Encoder42)
        exe
    }

    // next(j)(k) = proc k处理完成，将包即将发送给proc j
    val next_table = for (j <- 0 until const.processor_number) yield {
        val exe = Wire(Vec(const.processor_number, Bool()))
        for (k <- 0 until const.processor_number) {
            exe(k) := io.ready(k) && io.next_proc(k) === j.U(3.W)
        }
        Cat(exe(3), exe(2), exe(1), exe(0))
    }

    for (j <- 0 until const.processor_number) {
        encoders(j).io.input := next_table(j)
    }

    for (j <- 0 until const.processor_number) {
        io.end(j) := encoders(j).io.valid && io.ready(j)
        io.last_proc(j) := encoders(j).io.output
    }
}

object CB extends App {
    Driver.execute(args, () => new CrossBar)
}