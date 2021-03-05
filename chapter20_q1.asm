.text
.globl main 

main:
    lui     $1, 0x1000
loop:
    lb		$2, 0($1)
    sll     $0, $0, 0
    beq     $2, $0, end
    sll     $0, $0, 0
    addu    $2, $2, 0x20
    sb		$2, 0($1)
    sll     $0, $0, 0
    add     $1, $1, 1
    j		loop
    sll     $0, $0, 0 

end:
    sll     $0, $0, 0

.data
string:     .asciiz     "ABCDEF"