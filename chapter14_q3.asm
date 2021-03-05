.text
.globl main

main:
    ori $1, $0, 0x1000  
    ori $2, $0, 0x1000

    mult $1, $2
    mflo $3

    # significant bits in 0x1000 : 13
    # the result of multiplication : 0x1000000
    # significant bits in the result : 25

    ori $1, $0, 0x0FFF
    ori $2, $0, 0x0FFF

    mult $1, $2
    mflo $4
    sll  $0, $0, 0
    
    # significant bits in 0x0FFF : 12
    # the result of multiplication : FFE001
    # significant bits in the result : 24

    ori $1, $0, 0xFF00
    ori $2, $0, 0xFF00

    mult $1, $2
    mflo $5
    sll  $0, $0, 0
    
    # significant bits in 0xFF00 : 16
    # the result of multiplication : 0xFE010000
    # significant bits in the result : 32

    ori $1, $0, 0x8000
    ori $2, $0, 0x1000

    mult $1, $2
    mflo $6
    sll  $0, $0, 0

    # significant bits in 0x8000 : 16
    # significant bits in 0x1000 : 13
    # the result of multiplication : 8000000
    # significant bits of result : 28