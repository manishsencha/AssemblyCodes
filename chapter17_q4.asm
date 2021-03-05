.text
.globl main 


main:
    ori     $1, $0, 0
    ori     $2, $0, 100
    ori     $3, $0, 1
    ori     $4, $0, 1

loop:
    beq     $1, $2, end
    sll     $0, $0, 0
    addu    $1, $1, 1
    or      $5, $0, $3
    or      $3, $0, $4
    addu    $4, $4, $5
    j		loop				# jump to loop
    sll     $0, $0, $0

end:
    sll     $0, $0, 0