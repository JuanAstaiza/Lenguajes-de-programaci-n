Algoritmo _3_factorial
	//Escriba un algoritmo que solicite un número por pantalla, y visualice
	//el Factorial de dicho valor ingresado. 
	
	Definir n,contador Como Entero;
	Definir factorial como Real;
	contador<-0;
	factorial<-1;
	
	Escribir ":::::::: FACTORIAL ::::::::";
	Escribir "";
	
	Repetir
		Escribir "Digite un número: ";
		Leer n;
		Si n>=0 Entonces
			contador=1;
			Para i<-1 Hasta n Con Paso 1 Hacer
				factorial=factorial*i;
			Fin Para
			Escribir "El factorial de ",n," es: ",factorial;
		SiNo
			contador=0;
			Escribir "NO EXISTE FACTORIAL. Intente nuevamente.";
		Fin Si	
	Hasta Que contador=1;
		
FinAlgoritmo
