.text
.globl main 

main:
    ori     $1, $0, 1
    ori     $2, $0, 0

loop:
    addu    $2, $2, $1
    addi    $1, $1, 1
    j		loop				# jump to loop
    sll     $0, $0, 0
