li $t0, 20 
addi $t1,$t0, 5 
ori $t1, $t1, 2
 
END:
li $v0, 10
syscall

#Al terminar el programa nos da como resultado que $t0 = 20 y $t1 = 27
#esto se debe a la operación “or”, la cual trabajo de la siguiente manera
#25 = 11001
#2   = 00010 	?  	10011 = 27