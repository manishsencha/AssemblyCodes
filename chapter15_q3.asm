.text 
.globl main

main:
    lui     $1, 0x1000
    lw	    $2, 0($1)		
    
    ori     $7, $0, 6
    mult    $7, $2
    mflo    $7

    ori     $8, $0, 3
    subu    $7, $7, $8
    mult    $7, $2
    mflo    $7

    ori     $8, $0, 7
    addu    $7, $7, $8
    mult    $7, $2
    mflo    $7

    ori     $8, $0, 2
    addu    $7, $7, $8

    sw		$7, 4($1)		 
    
.data
x:      .word 2
poly:   .word 0