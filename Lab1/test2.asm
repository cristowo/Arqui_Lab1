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

#Inicialmente se resolvió el problema de modo como se muestra la imagen 
#dando como resultado: $t0 = 2; $t1 = 1, pero esto es una suposición 
#ya que originalmente la dirección “A” no existía y el programa no podía avanzar, 
#pero se le hace llamado en el “beq”, es por esto por lo que supuse que el siguiente 
#vendría siendo el “A”, corrigindome en el desarrollo de este codigo
