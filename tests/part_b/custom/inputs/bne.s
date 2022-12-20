addi t0, x0, -5
addi t1, x0, 7
addi t2, x0, 9
bne t0, t1, start

badloop:
	addi sp sp -1 #1
	bne x0 t1 badloop #2

start:
  addi t2, x0, 5
  bne x0, x0, badloop
  bne t2, t2 badloop
  addi s0, x0, -5
  bne s0, s0, badloop
  addi s0, x0, 5
  bne t2, s0, almostthere

almostthere:
   addi ra, x0, 5
