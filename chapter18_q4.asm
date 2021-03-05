.text
.globl main

main:
    lui     $1, 0x1000
    lw		$2, 0($1)
    sll     $0, $0, 0
    lw      $3, 4($1)
    sll     $0, $0, 0
    lw      $4, 8($1)
    sll     $0, $0, 0
    slt     $5, $2, $3
    slt     $6, $3, $4
    beq     $2, $3, storeS1
    sll     $0, $0, 0
    beq     $3, $4, storeS2
    sll     $0, $0, 0
    beq     $4, $2, storeS3
    sll     $0, $0, 0
    beq     $5, $6, storeA
    sll     $0, $0, 0
    slt     $5, $3, $2
    slt     $6, $2, $4
    beq     $5, $6, storeB
    sll     $0, $0, 0
    slt     $5, $2, $4
    slt     $6, $4, $3
    beq     $5, $6, storeC
    sll     $0, $0, 0
    j       end

storeS1:
    or      $8, $0, $2
    j		end				# jump to end
    sll     $0, $0, 0


storeS2:
    or      $8, $0, $3
    j		end				# jump to end
    sll     $0, $0, 0


storeS3:
    or      $8, $0, $4
    j		end				# jump to end
    sll     $0, $0, 0


storeA:
    or      $8, $0, $2
    j		end				# jump to end
    sll     $0, $0, 0
     
storeB:
    or      $8, $0, $3
    j		end				# jump to end
    sll     $0, $0, 0

storeC:
    or      $8, $0, $4
    j		end				# jump to end
    sll     $0, $0, 0

end:
    sll     $0, $0, 0

.data
A:  .word   9
B:  .word   98
C:  .word   9