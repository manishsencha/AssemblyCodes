.text
.globl main 

# 6 -> 1+2+3 -> 6 ; perfect
# 8 -> 1+2+4 -> 7; not perfect
main:
    lui     $1, 0x1000
    lw      $2, 0($1)
    ori     $3, $0, 1   
    ori     $4, $0, 0   # sum will be stored in this register

loop:
    slt     $5, $3, $2
    beq     $5, $0, end
    sll     $0, $0, 0
    div		$2, $3			# $2 / $3
    mflo	$6					# $6 = floor($2 / $3) 
    mfhi	$7					# $7 = $2 mod $3 
    
    sll     $0, $0, 0
    beq     $7, $0, op
    sll     $0, $0, 0
    addi    $3, $3, 1
    j		loop				# jump to loop
    sll     $0, $0, 0

op:
    addu    $4, $4, $3
    addi	$3, $3, 1			# $3 = $3 + 1
    j		loop				# jump to loop
    sll     $0, $0, 0

store:
    ori     $8, $0, 1
    sw      $8, 4($1)
    j		end2				# jump to end2
    sll     $0, $0, 0
    

end:
    beq     $2, $4, store
    sll     $0, $0, 0
    sw      $0, 4($1)
    sll     $0, $0, 0

end2:
    sll     $0, $0, 0


.data
N:          .word   6
isperfect:  .word   0