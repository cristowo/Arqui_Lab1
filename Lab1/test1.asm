addi $t0, $zero, 4		#en $t0 se gurada 0+4
add $t1, $t0, $t0		#en $t1 se guarda 4+4

END:				#fin
li $v0, 10
syscall

#Como se mencionó en el pre-lab. Los valore de $t0 y $t1 serian 4 y 8 respectivamente
#de esta manera se puede afirmar que los valores eran esperados.
