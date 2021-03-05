.text
.globl main 


# phi = 0;
# trial = 1;
# while ( trial < N)
# {
#     if ( gcd(N,trial) == 1 ) phi++;  
# }

main:
    lui     $1, 0x1000
    lw      $5, 0($1)
    ori     $6, $0, 0
    ori     $7, $0, 1

loop:
    slti    $8, $7, $5
    or      $2, $
    beq     $8, $0, end
    
    
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
    sll     $0, $0, 0




.data
N:      .word     21
phi:    .word      0