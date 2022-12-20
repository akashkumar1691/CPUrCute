addi x1, x0, 5
addi x2, x0, -5
blt x2, x2, badloop
blt x1, x2, badloop
blt x0, x1, start

badloop:
	addi sp sp -1
	beq x0 x0 badloop

start:
  blt x0, x0, badloop
  addi x5, x0, 5
