.text
.globl main

main:
    ori $1, $0, 0x01 #1   ->    00000001
    sll $2, $1, 4   # 10   ->   00000010
    sll $3, $2, 4   # 100    
    sll $4, $3, 4   # 1000 
    sll $5, $4, 4   # 10000
    sll $6, $5, 4   # 100000
    sll $7, $6, 4   # 1000000