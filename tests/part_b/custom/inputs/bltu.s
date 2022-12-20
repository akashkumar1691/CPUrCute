addi x1, x0, 5
addi x2, x0, -5
bltu x2, x2, badloop
bltu x2, x1, badloop
bltu x0, x1, start

badloop:
	addi sp sp -1
	beq x0 x0 badloop

start:
  bltu x0, x0, badloop
  bltu x2, x0, badloop
  bltu x0, x2 end
  
end:
  addi x5, x0, 5
