.data
	string: .asciiz "BANANADEPIJAMAS"

.text
	la $t0, string # Memory address
	li $t1, 0 # Counter

loop:
	lb $t2, 0($t0)
	
	beqz $t2, exit
	
	addi $t1, $t1, 1
	addi $t0, $t0, 1
	
	j loop

exit:
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
	