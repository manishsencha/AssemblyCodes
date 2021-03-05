.text
.globl main

main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    sll     $0, $0, 0
    ori     $3, $0, 4
    mult	$3, $2			    # $3 * $3 = Hi and Lo registers
    mflo	$4					# copy Lo to $4
    sll     $0, $0, 0
    addu    $4, $4, $1
    addu    $1, $1, 4
loop:
    slt     $5, $1, $4
    beq     $5, $0, end
    lw      $6, 0($1)
    sll     $0, $0, 0
    lw      $7, 0($4)
    sll     $0, $0, 0

    or      $8, $0, $6
    or      $6, $0, $7
    or      $7, $0, $8

    sw      $6, 0($1)
    sll     $0, $0, 0
    sw      $7, 0($4)
    sll     $0, $0, 0
    subu    $4, $4, $3
    addu    $1, $1, 4
    j		loop				# jump to loop
    sll     $0, $0, 0

end:
    
    sll     $0, $0, 0
 
.data
size:   .word 7                     # number of elements
array:  .word 1, 2, 3, 4, 5, 6, 7