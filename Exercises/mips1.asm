.data
	msg: .asciiz "Olá, Mundo!\n"

.text
	# Print message
	li $v0, 4
	la $a0, msg
	syscall
	
	# Finsih program
	li $v0, 10
	syscall
	