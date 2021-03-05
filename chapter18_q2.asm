.text
.globl main

main:
    ori     $1, $0, 0x0029 # 0x00298D7D
    sll     $1, $1, 16
    ori     $1, $1, 0x8D7D
    ori     $2, $0, 0

# 01000 -> 0100 -> 010 -> 01 -> 0
loop:
    beq     $1, $0, end
    sll     $0, $0, 0
    srl     $1, $1, 1
    addu    $2, $2, 1
    j       loop

end:
    sll     $0, $0, 0