.data
	msg1: .asciiz "Digite um número inteiro: "
	even: .asciiz "O número é PAR"
	odd: .asciiz "O número é ÍMPAR"

.text
	# Print message
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Read integer
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Compare
	and $t1, $t0, 1
	
	beq $t1, $0, is_even

	# If number is odd
	li $v0, 4
	la $a0, odd
	syscall
	
	j exit

is_even:
	li $v0, 4
	la $a0, even
	syscall

exit: 
	li $v0, 10
	syscall