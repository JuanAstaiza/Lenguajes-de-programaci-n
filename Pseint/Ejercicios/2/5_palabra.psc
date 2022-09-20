Algoritmo _5_palabra
	
	Definir contador,n_letras como Entero;
	Definir letra como Cadena;
	Dimension palabra[1000];
	
	Escribir ":::::::: UNA PALABRA ::::::::";
	Escribir "";
	Repetir
		Escribir ":: MENU PRINCIPAL ::";
		Escribir "[1] Ingresar palabra.";
		Escribir "[2] Mostrar palabra.";
		Escribir "[3] Mostrar palabra (Invertida).";
		Escribir "[4] Salir.";
		Escribir "Digite la opcion: ";
		Leer op;
		Segun op Hacer
			1:
				Escribir "";
				Escribir "Cuantas letras tiene la palabra que desea ingresar: ";
				Leer n_letras;
				contador<-0;
				Escribir "";
				Repetir
					contador=contador+1;
					Escribir "Digite la letra ",contador," :";
					Leer letra;
					palabra[contador]<-letra;
				Hasta Que contador==n_letras;
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;				
			2:		
				Escribir "";
				Escribir "::: La palabra ingresada es: ";
				Para i<-1 Hasta n_letras Con Paso 1 Hacer
					Escribir palabra[i];
				Fin Para
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;				
			3:
				Escribir "";
				Escribir "::: La palabra invertida es: ";
				contador<-n_letras+1;
				Para i<-1 Hasta n_letras Con Paso 1 Hacer
					contador=contador-1;
					Escribir palabra[contador];
				Fin Para
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;			
			4:
				Escribir "Has salido del Sistema. Adiós, vuelve pronto.";
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;
			De Otro Modo:
				Escribir "Opcion Incorrecta. Digite nuevamente.";
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;
		FinSegun
	Hasta Que op = 4;
	
FinAlgoritmo
