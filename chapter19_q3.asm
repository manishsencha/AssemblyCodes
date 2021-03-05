.text
.globl main 

# 6 -> 1+2+3 -> 6 ; perfect
# 8 -> 1+2+4 -> 7; not perfect
main:
    lui     $1, 0x1000
    lw		$2, 0($1)
    sll     $0, $0, 0
    ori     $3, $0, 1
    addu    $1, $1, 4

loop:
    beq		$3, $2, exit	# if $3 == $2 then exit
    sll     $0, $0, 0
    ori     $4, $0, 1
    ori     $5, $0, 0

perfect:
    beq     $3, $4, store
    sll     $0, $0, 0
    div		$3, $4			    # $3 / $4
    mflo	$6					# $6 = floor($3 / $4) 
    mfhi	$7					# $7 = $3 mod $4 
    sll     $0, $0, 0
    beq     $7, $0, operation
    sll     $0, $0, 0
    addu    $4, $4, 1
    j		perfect				# jump to perfect
    sll     $0, $0, 0
    

operation:  
    addu    $5, $5, $4
    sll     $0, $0, 0
    addu    $4, $4, 1
    j		perfect				# jump to perfect
    sll     $0, $0, 0

store:
    bne		$5, $2, counter 	# if $5 != $2 then loop
    sll     $0, $0, 0
    sw      $3, 0($1)
    sll     $0, $0, 0
    addu    $1, $1, 4
    addu    $3, $3, 1
    j		loop				# jump to loop
    sll     $0, $0, 0
    

counter:
    addu    $3, $3, 1
    j		loop				# jump to loop
    sll     $0, $0, 0
    
    
exit:
    sll     $0, $0, 0

.data
N:          .word   8
isperfect:  .space  100