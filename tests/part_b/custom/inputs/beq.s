addi t0, x0, -5
addi t1, x0, 7
addi t2, x0, 9
beq t0, t0, start

badloop:
	addi sp sp -1 #1
	beq x0 t1 badloop #2

start:
  addi t2, x0, 5
  beq x0, t0, badloop
  beq t2, t1 badloop
  addi s0, x0, -5
  beq s0, t2, badloop
  addi s0, x0, -5
  beq t0, s0, almostthere

	badloop2:
		addi sp sp -1 #1
		beq x0 t1 badloop2
		
almostthere:
   addi ra, x0, 5
