.data
	msg: .asciiz "Digite um número: "
	res: .asciiz "Result: "

.text
	# Print message
	li $v0, 4
	la $a0, msg
	syscall
	
	# Read int
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Multiplication by 4
	sll $t1, $t0, 2
	
	# Print result
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	# Finish program
	li $v0, 10
	syscall
	