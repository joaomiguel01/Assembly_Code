.data
	array: .word 3, 20, 14, 58, 12, 30, 120

.text
	la $t0, array # First element
	li $t1, 1 # Counter
	lw $t2, 0($t0) # The biggest (Assumption)
	addi $t0, $t0, 4
loop:
	bge $t1, 7, exit
	
	lw $t3, 0($t0)
	
	ble $t3, $t2, jump
	
	move $t2, $t3
jump:
	addi $t0, $t0, 4
	addi $t1, $t1, 1
	
	j loop

exit:
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall