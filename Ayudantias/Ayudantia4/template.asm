.globl __start

.data
    A: .word 12354, 231423, 14562354, 23523452, 146524356
    B: .byte 12, 16,

    -> | b1 | b2 | b3 | b4 | B ~ b5 |B+1 ~ b6 |
    {b1 -> b4} = 12354 -> 0000000 0000000 00110000 01000010 
    b5 = 0xFF
    b6 = 0xC4
.text
    __start:
        la a0, B
        lb a1, 0(a0)
        lbu a2, 1(a0)

    end:
        # end here, exit or run out of bottom
