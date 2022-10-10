li $t6, 2 		#int a = 2
li $t7, 10 		#int b = 10
li $t0, 0		#int m = 0

while:
bnez $t6, A		#si ($t6 != 0) ir a A

END:			#sino no lo es termina el programa
li $v0, 10
syscall

A:
add $t0, $t0, $t7	#m += b --> $t0 += $t7
subi $t6, $t6, 1	#a -= 1 --> $t6 -= 1
j while			#vuelve a evaluar
