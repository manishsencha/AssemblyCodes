.text
.globl main 

main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    sll     $0, $0, 0
    ori     $3, $0, 2
    
    div		$2, $3			# $2 / $3
    mflo	$4					# $4 = floor($2 / $3) 
    mfhi	$5					# $5 = $2 mod $3 
    
    beq     $5, $0, notprime
    sll     $0, $0, 0
    addu    $3, $3, 1

loop:
    slt     $8, $3, $2
    beq     $8, $0, prime
    div     $2, $3
    mflo    $6
    mfhi    $7
    
    beq     $7, $0, notprime
    sll     $0, $0, 0
    addi    $3, $3, 2

prime:
    ori     $10, $0, 1
    sw      $0, 4($1)
    sll     $0, $0, 0
    j		end				# jump to end
    sll     $0, $0, 0
    
notprime:
    sw      $0, 4($1)
    sll     $0, $0, 0
    j		end				# jump to end
    sll     $0, $0, 0

end:
    sll     $0, $0, 0

.data
N:        .word     223
isprime:  .word      0