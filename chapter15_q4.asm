.text 
.globl main

main:
    lui     $6, 0x1000      # Initialize base address
    lw	    $7, 0($6)		# Load x
    
    lw      $8, 4($6)       # Load a
    mult	$8, $7			# Calculate a*x
    mflo	$9	
    sll     $0, $0, 0			

    lw      $10, 8($6)      # Load b
    addu    $9, $9, $10     # Calculate a*x + b
    mult    $9, $7          # Calculate (a*x + b)*x
    mflo    $9		
    sll     $0, $0, 0

    lw      $11, 12($6)     # Load c
    addu    $9, $11, $9     # Calculate ((a*x + b)*x) + c
    mult    $9, $7          # Calculate (((a*x + b)*x) + c)*x
    mflo    $9       		
       

    lw      $12, 16($6)     # Load d
    addu    $9, $12, $9     # Calculate ((((a*x + b)*x) + c)*x) + d

    sw		$9, 20($6)		# Store a*x^3 + b*x^2 + c*x + d
    
.data
x:      .word     2
a:      .word    -3
b:      .word     3
c:      .word     9
d:      .word   -24
poly:   .word     0