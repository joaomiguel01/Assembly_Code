.text
	li $t0, 1

loop:
	bgt $t0, 5, exit
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	addi $t0, $t0, 1
	j loop

exit:
	li $v0, 10
	syscall
	