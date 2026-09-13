.data
	buffer: .space 20

.text
	# Read string
	li $v0, 8
	la $a0, buffer
	li $a1, 20
	syscall
	
	# Print string
	li $v0, 4
	syscall
	
	# Finish program
	li $v0, 10
	syscall
	
	