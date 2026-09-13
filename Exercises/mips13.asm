.text
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 0 # Acumulator
	li $t2, 1 # Counter

loop:
	bgt $t2, $t0, exit
	
	add $t1, $t1, $t2
	addi $t2, $t2, 1
	
	j loop

exit:
	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 10
	syscall