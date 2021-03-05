.text
.globl main 

main:
    ori     $1, $0, 1
    ori     $2, $0, 101
    ori     $3, $0, 0

loop:
    beq		$1, $2, end	        # if $1 == $2 then end
    sll     $0, $0, 0
    addu    $3, $3, $1
    addi	$1, $1, 1			# $1 = $1 + 1
    j		loop				# jump to loop
    sll     $0, $0, 0           # nop

end:
    sll     $0, $0, 0
