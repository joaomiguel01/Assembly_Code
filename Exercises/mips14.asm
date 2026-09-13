.text
	li $v0, 5
	syscall
	move $t0, $v0
	li $t1, 1 # Result

loop:
	blez $t0, exit
	
	mul $t1, $t1, $t0
	
	addi $t0, $t0, -1
	
	j loop

exit:
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
	