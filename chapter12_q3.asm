.text
.globl main

main:
    ori $1, $0, 0x01   # F -> 1111 -> 0000 nor 0000 -> 1111 
    srl $2, $1, 4
    nor $1, $0, $2


    