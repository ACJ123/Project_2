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