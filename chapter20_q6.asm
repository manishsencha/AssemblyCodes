.text
.globl main

main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    sll     $0, $0, $0
    addu    $1, $1, 4
    ori     $3, $0, 0
    ori     $8, $0, 0
    ori     $9, $0, 0

loop:
    beq     $3, $2, end
    sll     $0, $0, 0
    addu    $3, $3, 1
    lw      $4, 0($1)
    sll     $0, $0, 0
    addu    $1, $1, 4
    lw      $5, 0($1)
    sll     $0, $0, 0
    addu    $1, $1, 4
    addu    $8, $8, $4
    addu    $9, $9, $5
    j		loop				# jump to loop
    sll     $0, $0, 0

end:
    div     $8, $2
    mflo    $8
    mfhi    $6

    sll     $0, $0, 0

    div     $9, $2
    mflo    $9
    mfhi    $7
    sll     $0, $0, 0

.data
pairs:  .word 5                  # number of pairs
        .word 60, 90             # first pair: height, weight
        .word 65, 105
        .word 72, 256
        .word 68, 270
        .word 62, 115