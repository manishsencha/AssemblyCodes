.text
.globl main

main:
    ori   $1, $0, 0x3452    # 3452
    sll   $1, $1, 16        # 34520000    
    ori   $1, $1, 0x5678    # 34525678

    sll   $2, $1, 28

    srl   $3, $1, 4
    sll   $3, $3, 28
    srl   $3, $3, 4

    or    $3, $3, $2

    srl   $4, $1, 8
    sll   $4, $4, 28
    srl   $4, $4, 8

    srl   $5, $1, 12
    sll   $5, $5, 28
    srl   $5, $5, 12

    or    $5, $5, $4

    srl   $6, $1, 16
    sll   $6, $6, 28
    srl   $6, $6, 16

    srl   $7, $1, 20
    sll   $7, $7, 28
    srl   $7, $7, 20

    or    $7, $7, $6

    srl   $8, $1, 24
    sll   $8, $8, 28
    srl   $8, $8, 24
    
    srl   $9, $1, 28

    or    $9, $9, $8

    or    $5, $5, $3
    or    $9, $9, $7

    or    $2, $5, $9