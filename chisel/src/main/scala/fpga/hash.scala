package fpga

import chisel3._
import chisel3.util._

class Hash extends Module {
    val io = IO(new Bundle {
        val pipe        = new Pipeline
        val mod         = new HashModify
        val key_in      = Input(UInt(const.HASH.hash_key_width.W))
        val key_out     = Output(UInt(const.HASH.hash_key_width.W))
        val hash_val    = Output(UInt(const.HASH.hash_val_width.W))
        val hash_val_cs = Output(UInt(const.HASH.hash_val_cs_width.W))
    })

    // configuration
    // hash_depth = 0 means 8 for SRAM depth extending
    val hash_depth  = Reg(Vec(const.config_number, UInt(const.HASH.hash_val_cs_width.W)))
    when (io.mod.hash_depth_mod) {
        hash_depth(io.mod.config_id) := io.mod.hash_depth
    }

    // 8B key -> 2B key (3 cycles, cyclic plus omitted)
    // 2B key -> 2B key (3 cycles, for CS signal)
    // 6 Level pipeline

    // 192 bits width key
    // 24B (12 DB)
    // 12 -> 6 -> 3 -> 2 -> 1 (4 Levels)

    // first 4 level template
    class HashSumLevel(level: Int) extends Module {
        val io = IO(new Bundle {
            val pipe    = new Pipeline
            val key_in  = Input(UInt(const.HASH.hash_key_width.W))
            val key_out = Output(UInt(const.HASH.hash_key_width.W))
            val sum_in  = Input(UInt(const.HASH.hash_key_width.W))
            val sum_out = Output(UInt(const.HASH.hash_key_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val sum = Reg(UInt(const.HASH.hash_key_width.W))
        sum := io.sum_in

        when (phv.is_valid_processor) {
            // sum(0:12).at(i) -> sum(W-1-i*16, W-(i+1)*16)
            // level = 0 means 0+1 / 2+3 / 4+5 / 6+7 / ......
            // level = 1 means 0+1 / 2+3 / 4+5
            // level = 2 means 0+1 / 2
            // level = 3 means 0+1
            val w = const.HASH.hash_key_width / const.HASH.hash_sum_width  // 12
            val sum_w = scala.math.ceil(w / (1 << level).toDouble).toInt   // 12, 6, 3, 2
            val out_w = scala.math.ceil(w / (1 << level+1).toDouble).toInt // 6, 3, 2, 1
            val sum_temp = Wire(Vec(sum_w, UInt(const.HASH.hash_sum_width.W)))
            val out_temp = Wire(Vec(out_w, UInt(const.HASH.hash_sum_width.W)))
            for (j <- 0 until sum_w) {
                sum_temp(j) := sum((j+1)*const.HASH.hash_sum_width-1, j*const.HASH.hash_sum_width)
            }
            for (j <- 0 until out_w) {
                val add1 = j << 1
                val add2 = add1 + 1
                if (add2 < sum_w) {
                    out_temp(j) := sum_temp(add1) + sum_temp(add2)                    
                } else {
                    out_temp(j) := sum_temp(add1)
                }
            }
            io.sum_out := out_temp.reduce(Cat(_, _)) // passed
        } .otherwise {
            io.sum_out := sum
        }
    }

    // last 4 level template
    class HashReshapeLevel(level: Int) extends Module {
        val io = IO(new Bundle {
            val pipe = new Pipeline
            val hash_depth = Input(Vec(const.config_number, UInt(const.HASH.hash_val_cs_width.W)))
            val key_in  = Input(UInt(const.HASH.hash_key_width.W))
            val key_out = Output(UInt(const.HASH.hash_key_width.W))
            val sum_in  = Input(UInt(const.HASH.hash_sum_width.W))
            val sum_out = Output(UInt(const.HASH.hash_sum_width.W))
            val val_in  = Input(UInt(const.HASH.hash_sum_width.W))
            val val_out = Output(UInt(const.HASH.hash_sum_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val sum = Reg(UInt(const.HASH.hash_sum_width.W))
        sum := io.sum_in
        io.sum_out := sum

        val hash_depth = Reg(UInt(const.HASH.hash_val_cs_width.W))
        hash_depth := io.hash_depth(io.pipe.phv_in.next_config_id)
        val hash_val = Reg(UInt(const.HASH.hash_sum_width.W))
        hash_val := io.val_in

        when (phv.is_valid_processor) {
            when (hash_depth === 0.U(const.HASH.hash_val_cs_width.W)) {
                io.val_out := sum
            } .otherwise {
                when (hash_depth(level)) {
                    io.val_out := hash_val + sum(const.HASH.hash_sum_width-1-level,0)
                } .otherwise {
                    io.val_out := hash_val
                }
            }
        } .otherwise {
            io.val_out := hash_val
        }
    }

    // pipeline
    val pipe1 = Module(new HashSumLevel(0))
    val pipe2 = Module(new HashSumLevel(1))
    val pipe3 = Module(new HashSumLevel(2))
    val pipe4 = Module(new HashSumLevel(3))
    val pipe5 = Module(new HashReshapeLevel(0))
    val pipe6 = Module(new HashReshapeLevel(1))
    val pipe7 = Module(new HashReshapeLevel(2))
    val pipe8 = Module(new HashReshapeLevel(3))

    io.pipe.phv_in        <> pipe1.io.pipe.phv_in
    io.key_in             <> pipe1.io.key_in
    pipe1.io.sum_in       := pipe1.io.key_in

    pipe1.io.pipe.phv_out <> pipe2.io.pipe.phv_in
    pipe1.io.key_out      <> pipe2.io.key_in
    pipe1.io.sum_out      <> pipe2.io.sum_in

    pipe2.io.pipe.phv_out <> pipe3.io.pipe.phv_in
    pipe2.io.key_out      <> pipe3.io.key_in
    pipe2.io.sum_out      <> pipe3.io.sum_in

    pipe3.io.pipe.phv_out <> pipe4.io.pipe.phv_in
    pipe3.io.key_out      <> pipe4.io.key_in
    pipe3.io.sum_out      <> pipe4.io.sum_in

    pipe4.io.pipe.phv_out <> pipe5.io.pipe.phv_in
    pipe4.io.key_out      <> pipe5.io.key_in
    pipe4.io.sum_out      <> pipe5.io.sum_in
    pipe5.io.val_in       := 0.U(const.HASH.hash_sum_width.W)
    pipe5.io.hash_depth   := hash_depth
    
    pipe5.io.pipe.phv_out <> pipe6.io.pipe.phv_in
    pipe5.io.key_out      <> pipe6.io.key_in
    pipe5.io.sum_out      <> pipe6.io.sum_in
    pipe5.io.val_out      <> pipe6.io.val_in
    pipe6.io.hash_depth   := hash_depth

    pipe6.io.pipe.phv_out <> pipe7.io.pipe.phv_in
    pipe6.io.key_out      <> pipe7.io.key_in
    pipe6.io.sum_out      <> pipe7.io.sum_in
    pipe6.io.val_out      <> pipe7.io.val_in
    pipe7.io.hash_depth   := hash_depth

    pipe7.io.pipe.phv_out <> pipe8.io.pipe.phv_in
    pipe7.io.key_out      <> pipe8.io.key_in
    pipe7.io.sum_out      <> pipe8.io.sum_in
    pipe7.io.val_out      <> pipe8.io.val_in
    pipe8.io.hash_depth   := hash_depth

    pipe8.io.pipe.phv_out <> io.pipe.phv_out
    pipe8.io.key_out      <> io.key_out
    io.hash_val           := pipe8.io.sum_out(const.HASH.hash_val_width-1,0)
    io.hash_val_cs        := pipe8.io.val_out(const.HASH.hash_sum_width-1,const.HASH.hash_sum_width-const.HASH.hash_val_cs_width)
}

object HASH_OBJ extends App {
    Driver.execute(args, () => new Hash)
}