Algoritmo  Operaciones_matematicas
	Escribir "Programa de Operaciones Matematicas";
	Escribir "______________________________________________________";
	Escribir "";
	Escribir "";
	Repetir
		Escribir "Por favor escoja una opci�n:";
		Escribir "1.Suma";
		Escribir "2.Resta";
		Escribir "3.Multiplicaci�n";
		Escribir "4.Divisi�n";
		Escribir "5.Salir";
		Escribir "";
		Leer op;
		Si op=1 Entonces
			Escribir "Suma de 2 N�meros";
			Escribir "______________________";
			Escribir "Escriba el primer n�mero?";
			Leer n1;
			Escribir "Escriba el segundo n�mero?";
			Leer n2;
			res<-n1+n2;
			Escribir "La suma de los dos n�meros es: ",res;
		SiNo
			Si op=2 Entonces
				Escribir "Resta de 2 N�meros";
				Escribir "______________________";
				Escribir "Escriba el primer n�mero?";
				Leer n1;
				Escribir "Escriba el segundo n�mero?";
				Leer n2;
				res<-n1-n2;
				Escribir "La resta de los dos n�meros es: ",res;			
			SiNo
				Si op=3 Entonces
					Escribir "Multiplicaci�n de 2 N�meros";
					Escribir "______________________";
					Escribir "Escriba el primer n�mero?";
					Leer n1;
					Escribir "Escriba el segundo n�mero?";
					Leer n2;
					res<-n1*n2;
					Escribir "La multiplicaci�n de los dos n�meros es: ",res;
				SiNo
					Si op=4 Entonces
						Escribir "Divisi�n de 2 N�meros";
						Escribir "______________________";
						Escribir "Escriba el primer n�mero?";
						Leer n1;
						Escribir "Escriba el segundo n�mero?";
						Leer n2;
						res<-n1/n2;
						Escribir "La divisi�n de los dos n�meros es: ",res;
					SiNo
						Si op=5 Entonces
							Escribir "Gracias, vuelva pronto.";	
						SiNo
							Escribir "Opci�n no v�lida.";
						Fin Si			
					Fin Si
				Fin Si
			Fin Si
		Fin Si
		Escribir "";
		Escribir "Desea continuar: si/no ";
		Leer respuesta;
	Hasta Que respuesta='no';	
FinAlgoritmo
