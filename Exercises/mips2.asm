.data
	prompt: .asciiz "Digite um número: "
	res: .asciiz "Result: "
.text
	# Print prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Read integer
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Print result
	li $v0, 4
	la $a0, res
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	# Finish Program
	li $v0, 10
	syscall
	
	
	
	