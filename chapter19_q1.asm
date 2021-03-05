.text
.globl main 
# -> 0 0 0 0 1 1 1 1 2 2 2 2 3 3 3 3
main:
    lui     $1, 0x1000
    ori     $2, $0, 0
    ori     $3, $0, 24
    ori     $4, $0, 4

loop:
    beq     $2, $3, end
    sll     $0, $0, 0
    ori     $5, $0, 0
    j		loop2				# jump to loop2
    sll     $0, $0, 0

    
loop2:
    beq     $5, $4, loop3
    sll     $0, $0, 0
    sw		$2, 0($1)
    sll     $0, $0, 0
    addu    $1, $1, 4
    addu    $5, $5, 1
    j		loop2				# jump to loop2
    sll     $0, $0, 0
    
loop3:
    addu    $2, $2, 1
    j		loop				# jump to loop
    sll     $0, $0, 0
    

end:
    sll     $0, $0, 0
    
.data
array:  .space  100 