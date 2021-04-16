.globl __start

.data
    A: .word 12354, 231423, 14562354, 23523452, 146524356
    B: .byte 12, 16,

.text
    __start:
        la a0, B
        lb a1, 0(a0)
        lbu a2, 1(a0)

    end:
        # end here, exit or run out of bottom
