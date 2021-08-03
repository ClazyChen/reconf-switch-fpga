package gcd

import chisel3._
import chisel3.util._

object xbar_const {
    val input_number = 12
    val output_number = 12
    val width = 1024
    val index_width = 4
}

class XBar extends Module {
    val io = IO(new Bundle {
        val input = Input(Vec(xbar_const.input_number, UInt(xbar_const.width.W)))
        val output = Output(Vec(xbar_const.output_number, UInt(xbar_const.width.W)))
        val index = Input(Vec(xbar_const.output_number, UInt(xbar_const.index_width.W)))
    })

    for (j <- 0 until xbar_const.output_number) {
        // for (k <- 0 until xbar_const.input_number) {
        //     when (k.U(xbar_const.index_width.W) === io.index(j)) {
        //         io.output(j) := io.input(k)
        //     }
        // }
        io.output(j) := io.input(io.index(j))
    }
}

object XB extends App {
    Driver.execute(args, () => new XBar)
}