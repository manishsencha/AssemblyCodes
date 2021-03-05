.text
.globl main

main:
    ori $1, $0, 0x5555     # first storing 16bit 5555
    sll $1, $1, 16         # shift to left 4 positions
    ori $1, $1, 0x5555     # Storing 55555555
    sll $2, $1, 4           
    or  $3, $1, $2
    and $4, $1, $2
    xor $5, $1, $2
    