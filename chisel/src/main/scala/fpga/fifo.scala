// package fpga

// import chisel3._
// import chisel3.util._

// class PCIEFIFO extends Module {
//     val io = IO(new Bundle {
//         val request  = Input(Bool())
//         val pcie_in  = new PCIEWritePort
//         val pcie_out = Flipped(new PCIEWritePort)
//     })

//     val addr_fifo = Vec(const.PCIE.fifo_depth, )

// }