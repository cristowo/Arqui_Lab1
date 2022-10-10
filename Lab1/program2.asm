li $t3, 1		#int x = 1
li $t4, 0		#int y = 0

beqz  $t3, A		#if (x == 0) salta a A
beq $t3, 1, B		#else if (x == 1) salta a b
li $t4, 100		#"else"-->y = 100
j end			#saltar a fin

A:			#el if viene hasta aca
addi $t4, $t4, 1 	#y++
j end			#salta al fin

B:			#El else if viene hasta aca
subi $t4, $t4, 1 	#y--

end:
li $v0, 10		#termino del programa
syscall
