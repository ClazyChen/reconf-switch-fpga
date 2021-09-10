package fpga

import chisel3._
import chisel3.util._

class AXIS extends Bundle {
    val tvalid = Input(Bool())
    val tready = Output(Bool())
    val tdata  = Input(UInt(512.W))
    val tkeep  = Input(UInt(64.W))
    val tlast  = Input(Bool())
}

class InAXI extends Module {
    val io = IO(new Bundle {
        val s_axis     = new AXIS
        val ipsa_en_in = Output(Bool())
        val ipsa_data_in = Output(UInt(1024.W))
    })

    io.s_axis.tready := true.B
    io.ipsa_en_in := false.B
    io.ipsa_data_in := 0.U(1024.W)

    val buf = Reg(UInt(512.W))
    val status = RegInit(0.U(2.W))
    // 0 - waiting for valid data
    // 1 - received higher bits to buffer
    // 2 - received lower bits and transmit
    when (status === 0.U(2.W)) {
        when (io.s_axis.tvalid) {
            when (io.s_axis.tlast) { // only 1 data
                status := 0.U(2.W)
                io.ipsa_en_in := true.B
                io.ipsa_data_in := Cat(io.s_axis.tdata, 0.U(512.W))
            } .otherwise {         // wait for next data
                status := 1.U(2.W) // higher bits received
                buf := io.s_axis.tdata
            }
        }
    }
    when (status === 1.U(2.W)) {
        when (io.s_axis.tvalid) {
            when (io.s_axis.tlast) { // only 2 data
                status := 0.U(2.W)
            } .otherwise {           // wait for next last signal
                status := 2.U(2.W)
            }
            io.ipsa_en_in := true.B
            io.ipsa_data_in := Cat(buf, io.s_axis.tdata)
        }
    }
    when (status === 2.U(2.W)) {
        when (io.s_axis.tvalid) {
            when (io.s_axis.tlast) {
                status := 0.U(2.W)
            }
        }
    }
}

object IN_AXI_OBJ extends App {
    Driver.execute(args, () => new InAXI)
}