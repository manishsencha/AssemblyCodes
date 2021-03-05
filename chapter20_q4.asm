.text
.globl main

main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    sll     $0, $0, 0
    addi    $1, $1, 4
    lw      $3, 0($1)
    sll     $0, $0, 0
    addi    $1, $1, 4
    ori     $4, $0, 1

loop:
    beq     $4, $2, end
    lw      $5, 0($1)
    sll     $0, $0, 0
    addu    $1, $1, 4
    addu    $4, $4, 1
    slt     $6, $3, $5
    bne		$6, $0, store	# if $6 != $0 then store
    sll     $0, $0, 0
    j		loop				# jump to loop
    sll     $0, $0, 0

    
store:
    or      $3, $0, $5
    j		loop				# jump to loop
    sll     $0, $0, 0 


end:
    sll     $0, $0, $0


.data
size:   .word   8
array:  .word   23, -12, 45, -32, 52, -72, 8, 13