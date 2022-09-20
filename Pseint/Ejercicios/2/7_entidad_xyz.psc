Algoritmo _7_entidad_financieraa_xyz
	
	Definir booleano Como Cadena;
	Definir valor_retirar Como Entero;
	Definir cmoneda, monto2, resto,contador Como Entero;
	
	
	Dimension valor_moneda[6];
	
	valor_moneda[1] <- 100;
	valor_moneda[2] <- 50;
	valor_moneda[3] <- 20;
	valor_moneda[4] <- 10;
	valor_moneda[5] <- 5;
	valor_moneda[6] <- 1;
	
	
	Escribir ":::::::: ENTIDAD FINANCIERA XYZ ::::::::";
	Escribir "";	
	Escribir "::::::: RETIROS EN EFECTIVO :::::::";	
	Escribir "";
	
	Repetir
		Escribir ".: Digite el valor a retirar ($): " 
		Leer valor_retirar; 
		Si valor_retirar==0 Entonces
			Escribir "ERROR. Intente Nuevamente.";
		Fin Si			
	Hasta Que valor_retirar<>0;


	Para i<-1 Hasta 6 Con Paso 1 Hacer
		resto = valor_retirar MOD valor_moneda[i];
		monto2 = valor_retirar - resto;
		cmoneda = monto2 / valor_moneda[i];
		 
		valor_retirar = resto;
		
	//PRIMERA OPCION	
		
		/*Visualización de la Cantidad de Monedas
		Si cmoneda <> 0 Entonces
			Escribir cmoneda, " Moneda ($) de ", valor_moneda[i];
		FinSi */
		
		
	//SEGUNDA OPCION		
		
	//Visualización en Monto en Monto
		contador=0;
		Mientras contador <> cmoneda Hacer
			contador = contador + 1;
			Escribir valor_moneda[i];			
		Fin Mientras
			
	Fin Para
	


FinAlgoritmo
