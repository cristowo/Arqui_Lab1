.data
arr: .word 11,22,33,44	# a[0]=11, a[1]=22, a[2]=33, a[3]=44 
end: 
.text
la $t3, arr 		#$t3 apunta al comienzo -> a[0]
la $t2, end		#$t2 apunta al comienzo de end, es decir, despues del fianl de $t3(a[final[])

subu $t2, $t2, $t3	#resta de dos dirrecciones de memoria
			#y como saben las dirrecciones de memoria van de 4 en 4
			#entonces tendriamos que dividir en 4
			
srl $t2, $t2, 2 	#$t2=$t2>>2**2 osea que $t2/4
			#$t2 = num elementos en arreglo
lw $s0, ($t3)		#carga el contenido de $t0+i*4 en $s0

li $t1, 0		#i
li $t0, 0		#evensum
for:
beq $t2, $t1, fin	#si($t2==$t1) ir a end ---> si(largo==i) ir a end
andi $s1, $s0, 1	#$s1=($s0 & 1) --> if (arr[i] & 1 == 0) 
beq $s1, $zero, if	#	      ---> linea 12 y 13 verifican si es par o impar
j ifi
if:
add $t0, $t0, $s0	#si es par se añade
ifi:
addi $t3, $t3, 4	#siguiente en el arreglo 
lw $s0, ($t3) 		#carga el siguiente en el arreglo 
addi $t1, $t1, 1	#i+=1
j for

fin:
li $v0, 10		#fin
syscall
