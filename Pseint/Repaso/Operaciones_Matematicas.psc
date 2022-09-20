Algoritmo  Operaciones_matematicas
	Escribir "Programa de Operaciones Matematicas";
	Escribir "______________________________________________________";
	Escribir "";
	Escribir "";
	Repetir
		Escribir "Por favor escoja una opción:";
		Escribir "1.Suma";
		Escribir "2.Resta";
		Escribir "3.Multiplicación";
		Escribir "4.División";
		Escribir "5.Salir";
		Escribir "";
		Leer op;
		Si op=1 Entonces
			Escribir "Suma de 2 Números";
			Escribir "______________________";
			Escribir "Escriba el primer número?";
			Leer n1;
			Escribir "Escriba el segundo número?";
			Leer n2;
			res<-n1+n2;
			Escribir "La suma de los dos números es: ",res;
		SiNo
			Si op=2 Entonces
				Escribir "Resta de 2 Números";
				Escribir "______________________";
				Escribir "Escriba el primer número?";
				Leer n1;
				Escribir "Escriba el segundo número?";
				Leer n2;
				res<-n1-n2;
				Escribir "La resta de los dos números es: ",res;			
			SiNo
				Si op=3 Entonces
					Escribir "Multiplicación de 2 Números";
					Escribir "______________________";
					Escribir "Escriba el primer número?";
					Leer n1;
					Escribir "Escriba el segundo número?";
					Leer n2;
					res<-n1*n2;
					Escribir "La multiplicación de los dos números es: ",res;
				SiNo
					Si op=4 Entonces
						Escribir "División de 2 Números";
						Escribir "______________________";
						Escribir "Escriba el primer número?";
						Leer n1;
						Escribir "Escriba el segundo número?";
						Leer n2;
						res<-n1/n2;
						Escribir "La división de los dos números es: ",res;
					SiNo
						Si op=5 Entonces
							Escribir "Gracias, vuelva pronto.";	
						SiNo
							Escribir "Opción no válida.";
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
