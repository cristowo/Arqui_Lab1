.data
a: .space 4		#reserva 4 espacios para el arrgelo a
.text
la $t0, a		#$t0 apunta al comienzo -> a[0] 
la $t2, 3		#$t2 = 3
sw $t2, ($t0)		#guarda direccion de memoria($t0) = $t2	
lw $s0, ($t0)		#gurda el contenido de $t0+i*4 en $s0   //i=0 para quedarnos donde estamos

lw $s1, 12($t0)		#avanza hasta a[3] y se guarda en $s0
			#a+i*4-->$t0+3*4	//i=3 para avanzar al a[3]
			
subi $s1, $s0, 1	#a[3] = a[0] - 1

li $v0, 10		#fin
syscall
