.text
.globl main

# calculate  3x - 5y 
# 

main:
    ori     $8, $0, 2  # x is 2 here initialized in $8 register
    ori     $9, $0, 3  # y is 3 here initialized in $9 register
    sll     $1, $8, 1
    add		$8, $8, $1		# $8 = $8 + $1
    sll     $1, $9, 2
    add     $9, $9, $1
    sub     $10, $8, $9
