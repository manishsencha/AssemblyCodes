.text
.globl main 

main:
    ori     $9, $0, 40      # temperature max mid
    ori     $10, $0, 80    # temperature max highest


    ori     $8, $0, 34      # initialize value
    slti    $1, $8, 20
    bne		$1, $0, fail	# if $1 != $0 then fail
    sll     $0, $0, 0
   
    slti    $1, $8, 41
    bne     $1, $0, pass
    sll     $0, $0, 0

    slti    $1, $8, 60
    bne		$1, $0, fail	# if $1 != $0 then fail
    sll     $0, $0, 0
    
    
    slti    $1, $8, 81
    bne		$1, $0, pass	# if $1 != $0 then fail
    sll     $0, $0, 0

    j		fail				# jump to fail
    sll     $0, $0, 0
    
        
fail:
    ori     $3, $0, 0
    j       end
    sll     $0, $0, 0


pass:
    ori     $3, $0, 1
    j		end				# jump to end
    sll     $0, $0, 0
    
end:
    sll     $0, $0, 0