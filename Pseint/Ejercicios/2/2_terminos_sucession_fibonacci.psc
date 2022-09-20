Algoritmo _2_serie_Fibonacci 
	
	//Cree un algoritmo que imprima por pantalla los 20 primeros términos
	//de la sucesión Fibonacci. (Consulte y lea sobre esta serie)
	
	Definir a,b,c como Entero;
	
	a<-1;
	b<-1;
	Escribir ":::::: SERIE DE FIBONACCI ::::::";
	Escribir "";
	Para i<-1 Hasta 20 Con Paso 1 Hacer
		Escribir i,". ", a;
		c<-a+b;
		a<-b;
		b<-c;
	Fin Para
	
FinAlgoritmo

