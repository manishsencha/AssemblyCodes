.text
.globl main

main:
    ori     $8, $0, 0       # Stores x=0
    ori     $9, $0, 3       # Stores 3
    ori     $10, $0, 2      # Stores 2
    mult    $9, $8          # Calculate 3x
    mflo    $9              # Stores 3x
    sll     $0, $0, 0       # nop
    addi    $9, $9, 7       # Calculate 3x + 7

    mult    $10, $8         # Calculate 2x -> Lo register store $10 * $8
    mflo    $10             # Stores 2x -> value is stored in $10 from lo register
    sll     $0, $0, 0       # nop

    addi    $10, $10, 8     # Calculate 2x + 8
    divu	$9, $10			# 
    mflo	$11				# $11 -> $9 / $10
    mfhi	$12             # $12 -> $9 % $10 