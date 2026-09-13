.data
	array: .word 10, 20, 30

.text
	la $t0, array # First element
	li $t1, 0
	li $t2, 0
loop:
	bge $t1, 3, exit
	
	lw $t3, 0($t0)
	add $t2, $t2, $t3
	
	addi $t0, $t0, 4
	addi $t1, $t1, 1
	
	j loop

exit:
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall