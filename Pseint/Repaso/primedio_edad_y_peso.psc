Algoritmo edada_y_peso
	contador<-0;
	suma_edad<-0;
	suma_peso<-0;	
	Escribir "Programa para Calcular EDAD y PESO";
	Escribir "______________________________________________________";
	Escribir "";
	Escribir "";
	Repetir
		contador=contador+1;
		Escribir "Escriba la edad persona",contador," :";
		Leer edad;
		Escribir "Escriba el peso persona",contador," :";
		Leer peso;
		suma_edad=suma_edad+edad;
		suma_peso=suma_peso+peso;
  	Hasta Que contador==3;
	promedio_edad=suma_edad/3;
	promedio_peso=suma_peso/3;
	Escribir "El promedio de edad de las tres personas es: ",promedio_edad;
	Escribir "El promedio de peso de las tres personas es: ",promedio_peso;	
	
FinAlgoritmo
