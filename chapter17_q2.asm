.text
.globl main 

main:
    ori $8, $0, 0xFFFF

loop:
    add     $8, $8, $8
    j		loop				# jump to loop
    sll     $0, $0, 0
