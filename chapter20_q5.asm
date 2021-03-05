.text
.globl main

main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    sll     $0, $0, 0
    ori     $3, $0, 1
    addu    $1, $1, 4

loop:
    beq     $2, $3, end
    sll     $0, $0, 0
    addu    $3, $3, 1
    lw      $4, 0($1)
    sll     $0, $0, 0
    lw      $5, 4($1)
    sll     $0, $0, 0
    addu    $1, $1, 4
    slt     $6, $4, $5
    beq     $6, $0, store
    sll     $0, $0, 0
    ori     $8, $0, 1
    j		loop				# jump to loop
    sll     $0, $0, 0

store:
    ori     $8, $0, 0
    sll     $0, $0, 0

end:
    sll     $0, $0, 0

.data

size:   .word   10
array:  .word 2, 4, 7, 12, 34, 36, 42, 48, 57, 78