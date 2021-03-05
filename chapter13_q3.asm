.text
.globl main

main:
    ori     $9, $0, 0x7000
    sll     $9, $9, 16
    addu    $9, $9, $9
