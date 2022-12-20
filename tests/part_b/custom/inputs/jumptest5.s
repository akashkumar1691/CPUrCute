addi x0 x0 -1
bne x0 x6 realend
jal ra label
jal x0 end
label: jalr x6 ra 0
end:
 	jalr x0 x6 -16
realend:
	addi x0 x0 0
