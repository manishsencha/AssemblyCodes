.text
.globl main 

main:
    lui     $1, 0x1000
    ori     $3, $0, 0x20
    ori     $8, $0, 1

loop:
    lb		$2, 0($1)
    beq		$2, $0, end	    # if $2 == $0 then end
    sll     $0, $0, 0
    or      $4, $0, $1
    beq     $2, $3, shift
    sll     $0, $0, 0
    addu    $1, $1, 1
    j		loop				# jump to loop
    sll     $0, $0, 0
    
shift:
    lb      $8, 0($4)
    beq     $8, $0, loop
    sll     $0, $0, 0
    addu    $5, $4, 1
    lb      $6, 0($5)
    sll     $0, $0, 0
    sb		$6, 0($4)
    sll     $0, $0, 0
    addu    $4, $4, 1
    j		shift				# jump to shift
    sll     $0, $0, $0 
    
end:
    sll     $0, $0, 0

.data
string:   .asciiz    "Is  this a dagger    which I see before me?"