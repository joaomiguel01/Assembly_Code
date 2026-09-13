.text
	li $v0, 5
	syscall
	move $a0, $v0 # Parameter
	
	jal double
	move $a0, $v0
	
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall

double:
	sll $v0, $a0, 1
	jr $ra