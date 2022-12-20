
jal ra label
addi s0 x0 -1
jal x0 end
label: jalr x6 ra 0
end:
  addi x6 x6 40
  jalr x0 x6 0
