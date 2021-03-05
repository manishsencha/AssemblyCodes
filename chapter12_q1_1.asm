.text
.globl  main

main:
	ori     $1, $0, 0xDEAD
	sll     $1, $1, 16
	ori     $1, $1, 0xBEEF
