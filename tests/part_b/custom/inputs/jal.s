jal ra label
start:
addi s0 x0 -1
jal x0 end
label: jal ra start
end:
  addi s0 x0 -1

#0,3,1,2,4
