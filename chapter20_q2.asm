.text
.globl main

main:
    lui     $1, 0x1000
    lb		$2, 0($1)
    sll     $0, $0, 0
    ori     $3, 0x20

    beq     $2, $3, space
    sll     $0, $0, 0
    

loop:
    lb      $2, 0($1)
    beq		$2, $0, end	    # if $2 == $0 then end
    sll     $0, $0, 0
    beq     $2, $3, space
    sll     $0, $0, 0
    bne     $4, $0, do
    sll     $0, $0, 0
    addu    $1, $1, 1
    j		loop				# jump to loop
    sll     $0, $0, 0


do:
    subu    $2, $2, $3
    sb      $2, 0($1)
    sll     $0, $0, 0
    ori     $4, $0, 0
    addu    $1, $1, 1
    j		loop				# jump to loop
    sll     $0, $0, 0


space:
    ori     $4, $0, 1
    addu    $1, $1, 1
    j		loop				# jump to loop
    sll     $0, $0, 0

end:
    sll     $0, $0, 0



.data
string:   .asciiz    "in a  hole in the   ground there lived a hobbit"

