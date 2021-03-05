.text

.globl main 

main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    lw      $3, 4($1)

gcd:
    beq		$2, $3, end	        # if $1 == $2 then end
    sll     $0, $0, 0
    slt     $4, $2, $3
    beq     $4, $0, nltm
    sll     $0, $0, 0
    j		mltn				# jump to nltm
    sll     $0, $0, 0 

nltm:
    subu    $2, $2, $3
    j		gcd				# jump to loop
    sll     $0,$0, $0
    
mltn:
    sub		$3, $3, $2		
    j		gcd				# jump to loop
    sll     $0, $0, 0

end:
    sw      $2, 8($1)
    sll     $0, $0, 0
.data
M:      .word     21
N:      .word     14
GCD:    .word      0