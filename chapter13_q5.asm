.text
.globl main

main:
    ori     $8, $0, 2   # Initializing x to $8 register
    sll     $1, $8, 3
    sll     $2, $8, 2
    add     $1, $1, $2
    add     $10, $1, $8
    sub		$11, $0, $10