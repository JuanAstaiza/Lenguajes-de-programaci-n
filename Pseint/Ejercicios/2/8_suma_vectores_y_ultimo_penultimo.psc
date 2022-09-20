Algoritmo _8_suma_numeros_pu_u
	
	Definir n,contador,sumatoria Como Entero;
	
	Dimension numeros[1000];
	
	sumatoria<-0;
	contador<-0;
	
	Escribir ":::::::: SUMA DEL PENULTIMO Y ULTIMO NUMERO EN UN VECTOR ::::::::";
	Escribir "";
	
	Repetir
		contador=contador+1;
		Escribir "Digite un número a la casilla ",contador," vector: ";
		Leer n;		
		Si contador==1 O contador==2 Entonces
			numeros[contador]<-n;
		SiNo	
			Si contador==3 Entonces
				Para a<-1 Hasta contador Con Paso 1 Hacer	
					sumatoria=sumatoria+numeros[a];
				Fin Para
			SiNo
				sumatoria<-0;
				Para a<-contador-2 Hasta contador Con Paso 1 Hacer	
					sumatoria=sumatoria+numeros[a];
				Fin Para
			Fin Si			
			Si sumatoria==n Entonces
				Escribir "";
				Escribir "ERROR. NO es posible agregar ese número. Intente Nuevamente.";
				Escribir "La suma del  último y penúltimo es igual a el valor ingresado ",n;
				Escribir "";
				contador<-contador-1;
			SiNo
				numeros[contador]<-n;
			Fin Si
		Fin Si
	Hasta Que contador==1000;		
	
FinAlgoritmo
