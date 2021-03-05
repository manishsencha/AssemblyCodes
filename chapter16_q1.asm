.text
.globl main

main:

    lui      $1, 0x1000

    lbu      $2, 0($1)
    lbu      $3, 1($1)
    lbu      $4, 2($1)
    lbu      $5, 3($1)
    lbu      $6, 4($1)

    addu    $8, $2, $3
    addu    $8, $8, $4
    addu    $8, $8, $5
    addu    $8, $8, $6

    ori     $9, $0, 5
    div		$8, $9			
    mflo	$10					
    mfhi	$11					
    


.data

    a: .byte   12
    b: .byte   97
    c: .byte   133
    d: .byte   82
    e: .byte   236