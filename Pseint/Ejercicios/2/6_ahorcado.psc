Algoritmo _6_ahorcado
	Definir contador,n_letras,aciertos,desaciertos,op_nivel como Entero;
	Definir booleano Como Caracter;
	Definir tamano_max_palabra,vidas Como Entero;
	Definir letra_secreta,letra_ingresada como Cadena;
	Dimension palabra_secreta[1000];
	
	vidas<-6;
	
	
	Escribir ":::::::: AHORCADO ::::::::";
	Escribir "";
	Repetir
		Escribir ":: MENU PRINCIPAL ::";
		Escribir "[1] Ingresar palabra secreta.";
		Escribir "[2] Jugar.";
		Escribir "[3] Configuración.";
		Escribir "[4] Salir.";
		Escribir "Digite la opcion: ";
		Leer op;
		Segun op Hacer
			1:
				Escribir "";
				Escribir "Cuantas letras tiene la palabra secreta que desea ingresar: ";
				Leer n_letras;
				contador<-0;
				Escribir "";
				Repetir
					contador=contador+1;
					Escribir "Digite la letra ",contador," :";
					Leer letra_secreta;
					palabra_secreta[contador]<-letra_secreta;
				Hasta Que contador==n_letras;
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;				
			2:		
				Escribir "";
				Escribir ":: JUGAR ::";
				Dimension palabra_ingresada[n_letras]
				contador<-0;
				Escribir ":: AYUDA ::";
				Escribir "La palabra tiene ",n_letras," letras.";
				Para i<-1 Hasta n_letras Con Paso 1 Hacer
					Escribir "_";
				Fin Para
				contador<-0;
				aciertos<-0;
				desaciertos<-0;
				booleano="NO";
				Repetir
					contador=contador+1;
					Escribir "Digite la letra ",contador," :";
					Leer letra_ingresada;
					Si letra_ingresada==palabra_secreta[contador] Entonces
						palabra_ingresada[contador]<-letra_ingresada;
						Escribir "Letra Correcta.";
						aciertos=aciertos+1;
						Escribir ":: PALABRA :::";
						Para a<-1 Hasta n_letras Con Paso 1 Hacer
							Escribir palabra_ingresada[a];
						Fin Para
					SiNo						
						desaciertos=desaciertos+1;
						contador<-contador-1;
						Escribir "Letra Incorrecta. Tiene unicamente ",vidas-desaciertos," vidas. Intente nuevamente.";
					Fin Si
					Para i<-1 Hasta n_letras Con Paso 1 Hacer
						Si palabra_secreta[i]==palabra_ingresada[i] Entonces
							booleano="SI";
						SiNo
							booleano="NO";
						Fin Si						
					Fin Para
				Hasta Que desaciertos==vidas O booleano="SI";	
				Escribir "::: Palabras Ingresadas son:";
				Para i<-1 Hasta n_letras Con Paso 1 Hacer
					Escribir palabra_ingresada[i];
				Fin Para
				Escribir "";
				Escribir "::: REPORTE :::";
				Escribir "Total de aciertos: ",aciertos;
				Escribir "Total de desaciertos: ",desaciertos;
				Escribir "Presione una tecla para continuar. ";
				Esperar Tecla;				
			3:
				Repetir
					Escribir ":: NIVEL DEL JUEGO ::";
					Escribir "[1] Principiante.";
					Escribir "[2] Intermedio.";
					Escribir "[3] Avanzado.";
					Escribir "Digite la opcion: ";
					Leer op_nivel
					Si op_nivel==1 Entonces
						tamano_max_palabra <- 10;
						vidas <- 6;
					SiNo
						Si op_nivel==2 Entonces
							tamano_max_palabra <- 15;
							vidas <- 6;
						SiNo
							Si op_nivel==3 Entonces
								tamano_max_palabra <- 20;
								vidas <- 4;
							SiNo
								Escribir "Opción Incorrecta.Intente Nuevamente";
							Fin Si
						Fin Si
					Fin Si
				Hasta Que op_nivel==1 O op_nivel==2 O op_nivel==3;				
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
