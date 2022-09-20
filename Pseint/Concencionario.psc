Algoritmo Concencionario 
	Definir precio, descuento Como Real;
	Definir obsequio Como Caracter;
	Definir op,porcentaje Como Entero;
	Escribir "DISTRIBUIDORA DE MOTOCICLETAS";
	Escribir "___________________________________";
	Escribir "";
		Repetir
		Escribir ":: Menú de opciones ::";
		Escribir "::::::::::::::::::::::::::::::::";
		Escribir "Escoje el tipo de MOTO: ";
		Escribir "[1] Yamaha";
		Escribir "[2] Honda";
		Escribir "[3] Suzuki";
		Escribir "[4] Kawasaki";
		Escribir "[5] Auteco";
		Escribir "[6] Akt";
		Escribir "[7] Salir";	
		Escribir "Digite la opcion: ";
		Leer op;
		Segun op Hacer
			1:
				obsequio="Casco Moto Abatible Doble Certificado lch + Placas";
				porcentaje=5;
				Escribir ":: YAMAHA ::";
				Escribir "Ingresa  el precio de la moto:";
				Leer  precio;
				descuento=(precio*porcentaje)/100;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "El obsequio es: ",obsequio;
				Escribir "El valor de descuento es: ",porcentaje,"%";
				Escribir "El valor a apagar es: ", descuento;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
				
			2:
				obsequio="Una camiseta";
				porcentaje=7;
				Escribir ":: HONDA ::";
				Escribir "Ingresa  el precio de la moto:";
				Leer  precio;
				descuento=(precio*porcentaje)/100;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "El obsequio es: ",obsequio;
				Escribir "El valor de descuento es: ",porcentaje,"%";
				Escribir "El valor a apagar es: ", descuento;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
			3:
				obsequio="Un chaleco Reflectivo";
				porcentaje=10;
				Escribir ":: SUZUKI ::";
				Escribir "Ingresa  el precio de la moto:";
				Leer  precio;
				descuento=(precio*porcentaje)/100;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "El obsequio es: ",obsequio;
				Escribir "El valor de descuento es: ",porcentaje,"%";
				Escribir "El valor a apagar es: ", descuento;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
			4:
				obsequio="Una capa impermeable.";
				porcentaje=12;
				Escribir ":: KAWASAKI ::";
				Escribir "Ingresa  el precio de la moto:";
				Leer  precio;
				descuento=(precio*porcentaje)/100;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "El obsequio es: ",obsequio;
				Escribir "El valor de descuento es: ",porcentaje,"%";
				Escribir "El valor a apagar es: ", descuento;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
			5:
				obsequio="Un switch para moto y para Exploradoras encendido y apagado.";
				porcentaje=15;
				Escribir ":: AUTECO ::";
				Escribir "Ingresa  el precio de la moto:";
				Leer  precio;
				descuento=(precio*porcentaje)/100;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "El obsequio es: ",obsequio;
				Escribir "El valor de descuento es: ",porcentaje,"%";
				Escribir "El valor a apagar es: ", descuento;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
			6:
				obsequio="Botas Motociclistas Caucho Impermeables Lluvia.";
				porcentaje=20;
				Escribir ":: AKT ::";
				Escribir "Ingresa  el precio de la moto:";
				Leer  precio;
				descuento=(precio*porcentaje)/100;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "El obsequio es: ",obsequio;
				Escribir "El valor de descuento es: ",porcentaje,"%";
				Escribir "El valor a apagar es: ", descuento;
				Escribir "::::::::::::::::::::::::::::::::";
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
			De Otro Modo:
				Escribir "Has salido del Sistema.";
				Escribir "Presione una tecla para SALIR.";	
				Esperar Tecla;	
		Fin Segun
	Hasta Que op = 7;
	
FinAlgoritmo
