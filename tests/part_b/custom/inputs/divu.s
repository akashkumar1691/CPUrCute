addi t0, x0, -5
addi t1, x0, 7
addi t2, x0, 9

divu t0, t0, t1
divu t1, t1, t0
divu t2, x0, t2
divu t0, x0, t0
