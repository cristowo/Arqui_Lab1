addiu $t0, $zero, 0x10010000	#en $t0 se guarda la direccion 0x10010000
addi $t1, $zero, 5		#$t1=0+5
sw $t1, 0($t0)			#memoria[$t0+0]=$t1
lw $t2, 0($t0)			#$t2=memoria[$t0+0]
addiu $t0, $t0, 4		#$t0=0x10010000+4		
sw $t2, 0($t0)			#memoria[$t0+0]

END:				#fin
li $v0, 10
syscall

#Los resultados si eran los esperados, pero no tengo una visión del programa
#que me de certeza de los resultados de las direcciones de memoria, pero según 
#lo aprendido se puede decir que es correcto.
