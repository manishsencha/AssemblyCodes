.text
.globl main

# 0xFACE -> 0xCAFE
main:
    ori $1, $0, 0xFACE 
    srl $3, $1, 12
    sll $3, $3, 4      
    sll $4, $1, 24
    srl $4, $4, 28
    sll $4, $4, 12
    or  $5, $3, $4
    sll $6, $1, 28
    srl $6, $6, 28
    sll $7, $1, 20
    srl $7, $7, 28
    sll $7, $7, 8
    or  $8, $6, $7
    or  $1, $5, $8