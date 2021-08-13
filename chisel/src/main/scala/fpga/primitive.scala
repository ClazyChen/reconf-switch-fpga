package fpga

import chisel3._
import chisel3.util._

object PRIM {
    // primitive width = 32
    // OP[4] + P2[14] + P2[14]
    val operation   : UInt => UInt = x => x(31,28)
    val parameter_1 : UInt => UInt = x => x(27,14)
    val parameter_2 : UInt => UInt = x => x(13,0)

    val parameter_width = 14

    // opcode
    object OPCODE {
        val nop  = 0.U(4.W)
        val addi = 8.U(4.W)  // add <immediate number> to <field>     addi dst imm
        val copy = 9.U(4.W)  // copy from <field> to <field>          copy dst src
        val set  = 10.U(4.W) // set <arguments> to <field>            set  dst arg
        val seti = 11.U(4.W) // set <immediate number> to <field>     seti dst imm
        val goto = 15.U(4.W) // goto <next processor id>              goto     pid
    }

    // field parameter[14]
    object FIELD {
        val header_id       : UInt => UInt = x => x(13,10)
        val internal_offset : UInt => UInt = x => x(9,5)
        val length          : UInt => UInt = x => x(4,0)
    }

    // arguments parameter[14]
    object ARG {
        val offset          : UInt => UInt = x => x(13,11)
        val length          : UInt => UInt = x => x(10,8)
        val reserved        : UInt => UInt = x => x(7,0)   // reserved
    }
}