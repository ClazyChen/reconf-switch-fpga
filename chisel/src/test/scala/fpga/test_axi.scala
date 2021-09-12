package fpga;

import scala.util.control._
import scala.math.BigInt
import scala.util.Random
import chisel3._
import chisel3.iotesters.{Driver, PeekPokeTester}

class AXITester(c: Test) extends PeekPokeTester(c) {
    val tick = 4
    val tkeep = (BigInt(1) << 512) - 1

    for (i <- 0 until 20) {
        poke(c.io.m_axis.tready, true)
        poke(c.io.s_axis.tvalid, true)
        poke(c.io.s_axis.tdata, i)
        poke(c.io.s_axis.tkeep, tkeep)
        poke(c.io.s_axis.tlast, t % tick == tick-1)
        // println("========= " + i.toString + " =============")
        // println("ready = " + peek(c.io.s_axis.tready).toString)
    
        step(1);
        println("========= " + i.toString + " =============")
        // println("en    = " + peek(c.io.en).toString)
        // println("last  = " + peek(c.io.last).toString)
        // var x = peek(c.io.data)
        // println("data  = { " + (x >> 512).toString + " , " + (x & tkeep).toString + " }")
        println("valid = " + peek(c.io.m_axis.tvalid))
        println("data  = " + (peek(c.io.m_axis.tdata) >> 504).toString)
        println("last  = " + peek(c.io.m_axis.tlast))
    }
}

object AXI_TEST_OBJ extends App {
    chisel3.iotesters.Driver.execute(args, () => new Test()) (
        (c) => new AXITester(c)
    )
}