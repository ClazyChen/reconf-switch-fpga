package fpga

import chisel3._
import chisel3.util._

class IPSAPCIESP extends Module {
    val io = IO(new Bundle {
        // val pcie_r   = new PCIEReadPort
        // val pcie_w   = new PCIEWritePort
        val reg_select = Input(UInt(20.W))
        val data_in    = Input(UInt(64.W))

        val pcie_o   = new OutputInterface
    })

    val ipsa = Module(new IPSASP)
    // val pcie = Module(new PCIEInterface)
    val outp = Module(new OutPort)
    val inp  = Module(new InPort)

    val init = Module(new Initializer)
    init.io.pipe.phv_in <> inp.io.phv_out
    init.io.first_proc_id := 0.U

    ipsa.io.pipe.phv_in  := init.io.pipe.phv_out
    ipsa.io.pipe.phv_in.is_valid_processor := true.B
    
    ipsa.io.pipe.phv_out <> outp.io.phv_in
    outp.io.pcie_o       <> io.pcie_o

    val addr = io.reg_select(7,0)
    val cs   = io.reg_select(13,8)
    val op   = io.reg_select(19,14)

    ipsa.io.w.wcs    := cs
    ipsa.io.w.w.en   := op === 1.U(6.W)
    ipsa.io.w.w.addr := addr
    ipsa.io.w.w.data := io.data_in

    ipsa.io.mod.par_mod.en := op === 2.U(6.W) || op === 3.U(6.W) || op === 4.U(6.W)
    ipsa.io.mod.par_mod.last_mau_id_mod := op === 3.U(6.W)
    ipsa.io.mod.par_mod.last_mau_id := io.data_in
    ipsa.io.mod.par_mod.cs := cs(3,0)
    ipsa.io.mod.par_mod.module_mod.state_id_mod := cs(4)
    ipsa.io.mod.par_mod.module_mod.state_id     := io.data_in
    ipsa.io.mod.par_mod.module_mod.sram_w_cs := cs(5)
    ipsa.io.mod.par_mod.module_mod.sram_w.en := op(2)
    ipsa.io.mod.par_mod.module_mod.sram_w.addr := addr
    ipsa.io.mod.par_mod.module_mod.sram_w.data := io.data_in

    ipsa.io.mod.mat_mod.en := op === 5.U(6.W)
    ipsa.io.mod.mat_mod.config_id := cs(5)
    val key_mod = Reg(new MatchKeyConfig)
    val table_mod = Reg(new MatchTableConfig)
    ipsa.io.mod.mat_mod.key_mod := key_mod
    ipsa.io.mod.mat_mod.table_mod := table_mod
    when (op === 6.U(6.W)) {
        when (addr === 0.U) {
            key_mod.header_id := io.data_in
        }
        when (addr === 1.U) {
            key_mod.internal_offset := io.data_in
        }
        when (addr === 2.U) {
            key_mod.key_length := io.data_in
        }
        when (addr === 3.U) {
            key_mod.val_length := io.data_in
        }
        when (addr === 4.U) {
            table_mod.table_width := io.data_in
        }
        when (addr === 5.U) {
            table_mod.table_depth := io.data_in
        }
    }
    when (op === 7.U(6.W)) {
        for (j <- 0 until const.SRAM.sram_number_in_cluster) {
            when (addr === j.U) {
                table_mod.sram_id_table(j) := io.data_in
            }
        }
    }

    for (j <- 0 until const.EXEC.sram_number) {
        ipsa.io.mod.act_mod.en(j) := op === (8+j).U
        ipsa.io.mod.act_mod.data(j) := io.data_in
    }
    ipsa.io.mod.act_mod.addr := addr

    // pcie.io.pcie_r <> io.pcie_r
    // pcie.io.pcie_w <> io.pcie_w
    // pcie.io.mod    <> ipsa.io.mod
    // pcie.io.w      <> ipsa.io.w

    // ipsa.io.pipe.phv_out <> outp.io.phv_in
    // pcie.io.pcie_o       <> outp.io.pcie_o
}

object IPSA_PCIE_SP_OBJ extends App {
    Driver.execute(args, () => new IPSAPCIESP)
}