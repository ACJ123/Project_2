# N = 31
.data
 emptyInput: .asciiz "Input is empty."
 longInput: .asciiz "Input is too long."
  userInput: .space 500
  invalidInput: .asciiz "Invalid base-N number." # change n
  
  .text
  exit:
  li $v0, 10
   syscall

err_empty_input:
 la $a0, emptyInput
 li $v0, 4
 syscall
  j exit

err_invalid_input:
 la $a0, invalidInput
 li $v0, 4
 syscall
  j exit

err_long_input:
 la $a0, longInput
 li $v0, 4
 syscall
  j exit

main:
 li $v0, 8
 la $a0, userInput
 li $a1, 250
  syscall

delete_left_pad:
	li $t8, 32 # this line will end up making a space
	lb $t9, 0($a0)
	beq $t8, $t9, delete_first_char
	move $t9, $a0
	j input_len

delete_first_char:
	addi $a0, $a0, 1
	j delete_left_pad
	
input_len:
	addi $t0, $t0, 0
	addi $t1, $t1, 10
	add $t4, $t4, $a0
	
len_iteration:
	lb $t2, 0($a0)
	beqz $t2, after_len_found
	beq $t2, $t1, after_len_found
	addi $a0, $a0, 1
	addi $t0, $t0, 1
	j len_iteration

after_len_found:
	beqz $t0, err_empty_input
	slti $t3, $t0, 5
	
	
	
	
	
	
	
	
	