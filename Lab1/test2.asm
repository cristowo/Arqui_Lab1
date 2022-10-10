addi $t0, $zero, 2	#en $t0 se gurada 0+2
addi $t1, $zero, 2	#en $t1 se guarda 0+2
beq $t0, $t1, A		#si $t0 == $t1 ir a "A", pero como "A" no esta definida
			#se producira un error en el problema, pero si decimos que "A" 
			#si esta se prodcuce el siguiente caso
A:		
addi $t1, $zero, 1	#Tomamos en cuenta que A esta ahi, entonces tendriamoms que
			#$t0=2 y $t1=1, pero si el "A" no existe el programa no iniciaria
			
li $v0, 10		#fin
syscall

#Inicialmente se resolvi� el problema de modo como se muestra la imagen 
#dando como resultado: $t0 = 2; $t1 = 1, pero esto es una suposici�n 
#ya que originalmente la direcci�n �A� no exist�a y el programa no pod�a avanzar, 
#pero se le hace llamado en el �beq�, es por esto por lo que supuse que el siguiente 
#vendr�a siendo el �A�, corrigindome en el desarrollo de este codigo
