package fpga

import chisel3._
import chisel3.util._

class PCIEReadPort extends Bundle {
    val en   = Input(Bool())
    val addr = Input(UInt(const.PCIE.address_width.W))
    val data = Output(UInt(const.PCIE.data_width.W))
}

class PCIEWritePort extends Bundle {
    val en   = Input(Bool())
    val addr = Input(UInt(const.PCIE.address_width.W))
    val data = Input(UInt(const.PCIE.data_width.W))
}

class PCIEInterface extends Module {
    val io = IO(new Bundle {
        val pcie_r = new PCIEReadPort
        val pcie_w = new PCIEWritePort

        val pcie_o = Flipped(new OutputInterface)
        val mod    = Flipped(new IPSAModify)
        val w      = Vec(const.cluster_number, Flipped(new ClusterWritePort))
    })

    /*****
        Address Space (32 bits)
        0x 00000000 – Invalid (default signal)
        0x 1XYYZZZZ – SRAM Resource Pool
            X: Cluster ID
            Y: SRAM ID in cluster
            Z: Internal address in SRAM
        0x 2PSGZZZZ – Parser SRAM
            P: Processor ID
            S: Parser Stage Index
            G: Config ID
            Z: Internal address in SRAM
        0x 3P100000 – Parser Last MAU ID
            P: Processor ID
        0x 3P2S0000 – Parser Stage ID (of Stage)
            P: Processor ID
            S: Stage ID
        0x 3P2FFFFF – Parser Ending Signal (for stage ID and last MAU ID config)
            P: Processor ID
        0x 3P3G0000 – Matcher Key - Header ID
        0x 3P3G0100 – Matcher Key - Internal Offset
        0x 3P3G0200 – Matcher Key - Key Length
        0x 3P3G0300 – Matcher Key - Value Length
            P: Processor ID
            G: Config ID
        0x 3P3G10YY – Matcher Table – SRAM ID Table
        0x 3P3G1100 – Matcher Table – Table Width
        0x 3P3G1200 – Matcher Table – Table Depth
        P: Processor ID
            G: Config ID
            Y: Table Entry Index
        0x 3P3GFFFF – Matcher Ending Signal (for whole Key & Table config)
            P: Processor ID
            G: Config ID
        0x 4PSSZZZZ – Executor SRAM
            P: Processor ID
            S: SRAM Index in Executor
            Z: Internal address in SRAM
        0x 80000000 – First Processor ID
        0x 80000001 – Last Processor ID
        0x 9P000000 – Next Processor ID Table
        0x FFFFFFFF – Transmit Ending Signal
    */

    // read
    io.pcie_o.cs     := io.pcie_r.addr(19,16)
    io.pcie_o.r.en   := io.pcie_r.en
    io.pcie_o.r.addr := io.pcie_r.addr(15,0)
    io.pcie_o.r.data <> io.pcie_r.data

    // write
    val pcie_addr = io.pcie_w.addr
    val pcie_data = io.pcie_w.data
    val type_field     = Mux(io.pcie_w.en, pcie_addr(31,28), 0.U(4.W))
    val proc_id_field  = pcie_addr(27,24)
    val sub_type_field = pcie_addr(23,20)
    val config_field   = pcie_addr(19,16)
    val bias_field     = pcie_addr(15,0)
    val sram_id_field  = pcie_addr(23,16)

    val proc_mod = io.mod.proc_mod
    val xbar_mod = io.mod.xbar_mod

    // SRAM Resource Pool
    val cluster_id_field = proc_id_field
    for (j <- 0 until const.cluster_number) {
        val cluster_mod = io.w(j)
        cluster_mod.wcs    := sram_id_field
        cluster_mod.w.en   := cluster_id_field === j.U(4.W)
        cluster_mod.w.addr := bias_field
        cluster_mod.w.data := pcie_data 
    }

    val last_mau_id = Reg(UInt(const.mau_id_width.W))
    val state_id    = Reg(UInt(const.PHV.current_state_width.W))
    val mat_key = Reg(new MatchKeyConfig)
    val mat_tab = Reg(new MatchTableConfig)

    for (j <- 0 until const.processor_number) {
        val par_mod = proc_mod(j).par_mod
        val mat_mod = proc_mod(j).mat_mod
        val act_mod = proc_mod(j).act_mod

        // parser modify initialization
        par_mod.en              := false.B
        par_mod.last_mau_id_mod := false.B
        par_mod.last_mau_id     := last_mau_id
        par_mod.cs              := config_field
        par_mod.module_mod.state_id_mod := false.B
        par_mod.module_mod.state_id     := state_id
        par_mod.module_mod.sram_w_cs    := sub_type_field
        par_mod.module_mod.sram_w.en    := false.B
        par_mod.module_mod.sram_w.addr  := bias_field
        par_mod.module_mod.sram_w.data  := pcie_data

        // matcher modify initialization
        mat_mod.en        := false.B
        mat_mod.config_id := 0.U(const.config_id_width.W)
        mat_mod.key_mod   := mat_key
        mat_mod.table_mod := mat_tab

        // executor modify initialization
        for (k <- 0 until const.EXEC.sram_number) {
            act_mod.en(k)   := false.B
            act_mod.addr    := 0.U(const.SRAM.address_width.W)
            act_mod.data(k) := 0.U(const.SRAM.data_width.W)
        }

        when (proc_id_field === j.U(4.W)) {
            // parser SRAM modify
            when (type_field === 2.U(4.W)) {
                par_mod.en := true.B
                par_mod.module_mod.sram_w.en := true.B
            }
            // parser or matcher config modify
            when (type_field === 3.U(4.W)) {
                // parser config modify
                when (sub_type_field === 1.U(4.W)) {
                    last_mau_id := pcie_data
                }
                when (sub_type_field === 2.U(4.W)) {
                    when (bias_field === 0.U(16.W)) {
                        state_id    := pcie_data
                    }
                    when (bias_field === 0xFFFF.U(16.W)) {
                        par_mod.en              := true.B
                        par_mod.last_mau_id_mod := true.B
                        par_mod.module_mod.state_id_mod := config_field =/= 0xF.U(4.W)
                    }
                }
                // matcher config modify
                when (sub_type_field === 3.U(4.W)) {
                    mat_mod.config_id := config_field
                    when (bias_field === 0x0000.U(16.W)) {
                        mat_key.header_id := pcie_data
                    }
                    when (bias_field === 0x0100.U(16.W)) {
                        mat_key.internal_offset := pcie_data
                    }
                    when (bias_field === 0x0200.U(16.W)) {
                        mat_key.key_length := pcie_data
                    }
                    when (bias_field === 0x0300.U(16.W)) {
                        mat_key.val_length := pcie_data
                    }
                    when (bias_field(15,8) === 0x10.U(8.W)) {
                        mat_tab.sram_id_table(bias_field(7,0)) := pcie_data
                    }
                    when (bias_field === 0x1100.U(16.W)) {
                        mat_tab.table_width := pcie_data
                    }
                    when (bias_field === 0x1200.U(16.W)) {
                        mat_tab.table_depth := pcie_data
                    }
                    when (bias_field === 0xFFFF.U(16.W)) {
                        mat_mod.en := true.B
                    }
                }
            }
            // executor action modify
            when (type_field === 4.U(4.W)) {
                act_mod.addr := bias_field
                for (k <- 0 until const.EXEC.sram_number) {
                    when (sram_id_field === k.U(8.W)) {
                        act_mod.en(k)   := true.B
                        act_mod.data(k) := pcie_data
                    }
                }
            }
        }
    }

    // crossbar modify
    val first_proc_id = Reg(UInt(const.processor_id_width.W))
    val last_proc_id  = Reg(UInt(const.processor_id_width.W))
    val next_proc_id  = Reg(Vec(const.processor_number, UInt(const.processor_id_width.W)))

    when (type_field === 8.U(4.W)) {
        when (bias_field === 0.U(16.W)) {
            first_proc_id := pcie_data
        }
        when (bias_field === 1.U(16.W)) {
            last_proc_id  := pcie_data
        }
    }
    when (type_field === 9.U(4.W)) {
        next_proc_id(proc_id_field) := pcie_data
    }
    xbar_mod.en            := type_field === 0xF.U(4.W)
    xbar_mod.first_proc_id := first_proc_id
    xbar_mod.last_proc_id  := last_proc_id
    xbar_mod.next_proc_id  := next_proc_id
}