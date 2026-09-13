.data
	array: .word 10, 20, 30

.text
	la $t0, array # First element
	li $t1, 0

loop:
	bge $t1, 3, exit
	
	li $v0, 1
	lw $a0, 0($t0)
	syscall
	
	addi $t0, $t0, 4
	addi $t1, $t1, 1
	
	j loop

exit:
	li $v0, 10
	syscall
	