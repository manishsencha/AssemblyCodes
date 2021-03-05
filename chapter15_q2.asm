## poly.asm -- complete program
##
## evaluate  17xy - 12x - 6y + 12


        .text
        .globl  main

main: 
        lui   $10,0x1000     #  Init base register
        lw    $11,0($10)     #  Load x
        lw    $12, 4($10)    #  Load y

        ori   $13, $0, 12    #  $13 = 12

        ori   $14, $0, 6     #  $14 = 6
        mult  $14, $12		 #  Calculate 6y
        mflo  $14			 #  $14 = 6y
        subu  $14, $13, $14  #  Calculate 12 - 6y

        ori   $15, $0, 12    #  $15 = 12
        mult  $15, $11       #  Calculate 12x
        mflo  $15            #  $15 = 12x
        subu  $15, $14, $15  #  Calculate 12 - 6y - 12x

        ori   $16, $0, 17    #  $16 = 17
        mult  $16, $11       #  Calculate 17x
        mflo  $16            #  $16 = 17x
        mult  $16, $12       #  Calculate 17xy
        mflo  $16            #  $16 = 17xy
        addu  $16, $16, $15  #  Calculate 17xy - 12x - 6y + 12
        sw    $16,8($10)     #  Store result in poly

        .data
x:      .word   2            #  Edit this line to change the value of x
y:      .word   2            #  Edit this line to change the value of y
poly:   .word   0            #  Result is placed here.