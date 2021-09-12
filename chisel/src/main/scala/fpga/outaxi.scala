package fpga

import chisel3._
import chisel3.util._

// class AXIS extends Bundle {
//     val tvalid = Input(Bool())
//     val tready = Output(Bool())
//     val tdata  = Input(UInt(512.W))
//     val tkeep  = Input(UInt(64.W))
//     val tlast  = Input(Bool())
// }

class OutAXI extends Module {
    val io = IO(new Bundle {
        val m_axis        = Flipped(new AXIS)
        val ipsa_last_out = Input(Bool())
        val ipsa_en_out   = Input(Bool())
        val ipsa_data_out = Input(UInt(1024.W))
    })

    val buf   = Reg(UInt(512.W))
    val phase = RegInit(0.U(1.W))
    val waitl = RegInit(0.U(1.W)) // waiting for last
    val last  = RegInit(0.U(1.W))
    
    io.m_axis.tvalid := true.B
    io.m_axis.tdata  := 0.U(512.W)
    io.m_axis.tkeep  := ~0.U(64.W)
    io.m_axis.tlast  := false.B

    when (io.m_axis.tready) {
        when (phase === 0.U(1.W)) {
            when (waitl === 1.U(1.W) || io.ipsa_en_out) {
                phase := 1.U(1.W)
                io.m_axis.tdata  := io.ipsa_data_out(1023,512)
                buf  := io.ipsa_data_out(511,0)
                last := io.ipsa_last_out
                waitl := 1.U(1.W)
            }
        } .otherwise {
            phase := 0.U(1.W)
            io.m_axis.tdata := buf
            io.m_axis.tlast := last
            when (last === 1.U(1.W)) {
                waitl := 0.U(1.W)
            }
        }
    } .otherwise {
        phase := 0.U(1.W)
        last := 0.U(1.W)
        waitl := 0.U(1.W)
    }

    // when (io.m_axis.tready) {
    //     when (status === 0.U(2.W)) {
    //         when (io.ipsa_en_out) { // input
    //             io.m_axis.tvalid := true.B
    //             io.m_axis.tkeep  := ~ 0.U(64.W)
    //             io.m_axis.tdata := io.ipsa_data_out(1023,512)
    //             buf := io.ipsa_data_out(511,0)
    //             status := 1.U(2.W)
    //         }
    //     }
    //     when (status === 1.U(2.W)) {
    //         io.m_axis.tvalid := true.B
    //         io.m_axis.tkeep  := ~ 0.U(64.W)
    //         io.m_axis.tdata  := status
    //         status := 0.U(2.W)
    //     }
    // }
}

object OUT_AXI_OBJ extends App {
    Driver.execute(args, () => new OutAXI)
}