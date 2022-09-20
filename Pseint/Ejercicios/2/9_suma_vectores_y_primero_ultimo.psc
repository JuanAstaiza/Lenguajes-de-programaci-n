Algoritmo _9_suma_numeros_p_u
	
	Definir n,contador,primer_numero,segundo_numero Como Entero;
	
	Dimension numeros[1000];
	
	sumatoria<-0;
	contador<-0;
	
	Escribir ":::::::: SUMA DEL PRIMERO Y ULTIMO NUMERO EN UN VECTOR ::::::::";
	Escribir "";
	
	Repetir
		contador=contador+1;
		Escribir "Digite un número a la casilla ",contador," vector: ";
		Leer n;		
		Si contador==1 O contador==2 Entonces
			numeros[contador]<-n;
		SiNo	
			sumatoria<-numeros[1]+numeros[contador-1];
			Si sumatoria==n Entonces
				Escribir "";
				Escribir "ERROR. NO es posible agregar ese número ",n,". Intente Nuevamente.";
				Escribir "La suma del  primer y último es igual a el valor ingresado ",n;
				Escribir numeros[1]," + ",numeros[contador-1], " = ", n ;
				Escribir "";
				contador<-contador-1;
			SiNo
				numeros[contador]<-n;
			Fin Si
		Fin Si
	Hasta Que contador==1000;		
	
FinAlgoritmo
