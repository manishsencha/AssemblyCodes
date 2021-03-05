.text
.globl main


main:
    ori     $1,  $0, 1
    ori     $2,  $0, 1
    ori     $4,  $0, 1
    ori     $8,  $0, 0
    ori     $9,  $0, 0
    ori     $10, $0, 0

loop:
    slti    $3,  $1, 101        # Counter
    beq     $3,  $0, end        # break if 100 reached
    sll     $0,  $0, 0          # nop
    addu    $10, $10, $1        # sum of all numbers
    beq     $2,  $0, even       # check if even 
    sll     $0, $0, 0
    beq     $2,  $4, odd
    sll     $0,  $0, 0

even:
    addu    $8, $8, $1
    addi    $1, $1, 1
    ori     $2, $0, 1
    j		loop
    sll     $0, $0, 0

odd:
    addu    $9, $9, $1          
    addi    $1, $1, 1
    ori     $2, $0, 0 
    j		loop
    sll     $0, $0, 0
    

end: 
    sll     $0, $0, 0
