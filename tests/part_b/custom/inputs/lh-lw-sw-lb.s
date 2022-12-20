loadaddresses:
addi x1, x0, 1699
addi x5, x0, 5
addi x6, x0, 6
addi x7, x0, 7
addi x8, x0, 8
addi x9, x0, 9
addi x10, x0, 10
addi sp, sp, -28

store:
sw x1, 0(sp)
sw x5, 4(sp)
sw x6, 8(sp)
sw x7, 12(sp)
sw x8, 16(sp)
sw x9, 20(sp)
sw x10, 24(sp)

loadingtime:
lw x10, 0(sp)
lw x1, 4(sp)
lw x5, 8(sp)
lb x6, 12(sp)
lb x7, 16(sp)
lh x8, 20(sp)
lh x9, 2(sp)
lb x9, 0(sp)
lb x9, 1(sp)
lb x9, 2(sp)
lb x9, 3(sp)
