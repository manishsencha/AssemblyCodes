.text
.globl main

main:
    ori     $1, $0, 0x186A
    sll     $1, $1, 8
    ori     $2, $0, 0x1388
    sll     $2, $2, 4
    ori     $3, $0, 0x61A8
    sll     $3, $3, 4
    div		$1, $2			# $1 / $2
    mflo	$4					# $4 = floor($1 / $2) 
    mfhi	$5					# $5 = $1 mod $2 
    mult	$4, $3			# $4 * $3 = Hi and Lo registers
    mflo	$6					# copy Lo to $6
    