.text
.globl main

main:
    ori      $8, $0, 1      # put x into $8
    ori      $10, $0, 3     # Accumulate 3
    mult     $10, $8        # Calculate 3x
    mflo     $10            # Stores 3x
    sll      $0, $0, 0      # nop

    mult     $10, $8        # Calculate 3*x^2
    mflo     $10            # Stores 3x^2
    sll      $0, $0, 0      # nop
    
    ori      $9, $0,  5     # put 5 into $9
    mult     $9, $8         # lo = 5x
    mflo     $9             # $9 = 5x
    sll      $0, $0, 0     # nop   

    addiu    $9, $9, -12    # Calculate 5x - 12
    addu     $10, $10, $9   # Calculate 3x^2 + 5x - 12