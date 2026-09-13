.data
	msg1: .asciiz "Digite o primeiro número: "
	msg2: .asciiz "Digite o segundo número: "
	res: .asciiz "Result: "

.text
	# Print message 1
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Read integer 1
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Print message 2
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Read integer 2
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Division
	div $t0, $t1
	mfhi $t2 # Rest
	
	# Print result
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	# Finish program
	li $v0, 10
	syscall
	
	
	
