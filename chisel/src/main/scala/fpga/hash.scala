package fpga

import chisel3._
import chisel3.util._

class Hash extends Module {
    val io = IO(new Bundle {
        val pipe        = new Pipeline
        val mod         = new HashModify
        val key         = Input(UInt(const.HASH.hash_key_width.W))
        val hash_val    = Output(UInt(const.HASH.hash_val_width.W))
        val hash_val_cs = Output(UInt(const.HASH.hash_val_cs_width.W))
    })

    // configuration
    val hash_depth  = Reg(UInt(const.HASH.hash_val_cs_width.W))
    when (io.mod.hash_depth_mod) {
        hash_depth := io.mod.hash_depth
    }

    // 8B key -> 2B key (3 cycles, cyclic plus omitted)
    // 2B key -> 2B key (3 cycles, for CS signal)
    // 6 Level pipeline

    // first 3 level template
    class HashSumLevel(level: Int) extends Module {
        val io = IO(new Bundle {
            val pipe    = new Pipeline
            val key_in  = Input(UInt(const.HASH.hash_key_width.W))
            val key_out = Output(UInt(const.HASH.hash_key_width.W))
            val sum_in  = Input(UInt(const.HASH.hash_sum_width.W))
            val sum_out = Output(UInt(const.HASH.hash_sum_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val key = Reg(UInt(const.HASH.hash_key_width.W))
        key := io.key_in
        io.key_out := key

        val sum = Reg(UInt(const.HASH.hash_sum_width.W))
        sum := io.sum_in
        io.sum_out := sum + key(level*16+15, level*16)
    }

    // last 3 level template
    class HashReshapeLevel(level: Int) extends Module {
        val io = IO(new Bundle {
            val pipe = new Pipeline
            val hash_depth = Input(UInt(const.HASH.hash_val_cs_width.W))
            val sum_in  = Input(UInt(const.HASH.hash_sum_width.W))
            val sum_out = Output(UInt(const.HASH.hash_sum_width.W))
            val val_in  = Input(UInt(const.HASH.hash_sum_width.W))
            val val_out = Output(UInt(const.HASH.hash_sum_width.W))
        })

        val phv = Reg(new PHV)
        phv := io.pipe.phv_in
        io.pipe.phv_out := phv

        val sum = Reg(UInt(const.HASH.hash_sum_width.W))
        sum := io.sum_in
        io.sum_out := sum

        val hash_depth = Reg(UInt(const.HASH.hash_val_cs_width.W))
        hash_depth := io.hash_depth
        val hash_val = Reg(UInt(const.HASH.hash_sum_width.W))
        hash_val := io.val_in
        when (hash_depth(level)) {
            io.val_out := hash_val + sum(15-level,0)
        } .otherwise {
            io.val_out := hash_val
        }
    }

    // pipeline
    val pipe1 = Module(new HashSumLevel(1))
    val pipe2 = Module(new HashSumLevel(2))
    val pipe3 = Module(new HashSumLevel(3))
    val pipe4 = Module(new HashReshapeLevel(0))
    val pipe5 = Module(new HashReshapeLevel(1))
    val pipe6 = Module(new HashReshapeLevel(2))

    io.pipe.phv_in        <> pipe1.io.pipe.phv_in
    io.key                <> pipe1.io.key_in
    pipe1.io.sum_in       := io.key(const.HASH.hash_sum_width-1,0)

    pipe1.io.pipe.phv_out <> pipe2.io.pipe.phv_in
    pipe1.io.key_out      <> pipe2.io.key_in
    pipe1.io.sum_out      <> pipe2.io.sum_in

    pipe2.io.pipe.phv_out <> pipe3.io.pipe.phv_in
    pipe2.io.key_out      <> pipe3.io.key_in
    pipe2.io.sum_out      <> pipe3.io.sum_in

    pipe3.io.pipe.phv_out <> pipe4.io.pipe.phv_in
    pipe3.io.sum_out      <> pipe4.io.sum_in
    pipe4.io.val_in       := 0.U(const.HASH.hash_sum_width.W)
    pipe4.io.hash_depth   := hash_depth
    
    pipe4.io.pipe.phv_out <> pipe5.io.pipe.phv_in
    pipe4.io.sum_out      <> pipe5.io.sum_in
    pipe4.io.val_out      <> pipe5.io.val_in
    pipe5.io.hash_depth   := hash_depth

    pipe5.io.pipe.phv_out <> pipe6.io.pipe.phv_in
    pipe5.io.sum_out      <> pipe6.io.sum_in
    pipe5.io.val_out      <> pipe6.io.val_in
    pipe6.io.hash_depth   := hash_depth

    pipe6.io.pipe.phv_out <> io.pipe.phv_out
    io.hash_val           := pipe6.io.sum_out(const.HASH.hash_val_width-1,0)
    io.hash_val_cs        := pipe6.io.val_out(const.HASH.hash_val_width-1,const.HASH.hash_val_width-const.HASH.hash_val_cs_width)
}

object HASH_OBJ extends App {
    Driver.execute(args, () => new Hash)
}