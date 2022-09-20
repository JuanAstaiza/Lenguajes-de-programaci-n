Proceso menu_vector
	Definir id, nombres, ide, ced Como Cadena;
	Definir op, cant, edad, i, estado, aux Como Entero;
	i<-1;
	Dimension id[100];
	Dimension nombres[100];
	Dimension edad[100];
	Repetir
		Limpiar Pantalla;
		Escribir "::: Menú de opciones :::";
		Escribir "[1]. Registrar datos";
		Escribir "[2]. Listar datos registrados";
		Escribir "[3]. Buscar usuario";
		Escribir "[4]. Salir";
		Escribir "Digite una opción: ";
		Leer op;
		Segun op Hacer
			1:
				Limpiar Pantalla;
				Repetir
					Limpiar Pantalla;
					
					Repetir
						estado <- 0;
						Escribir "Digite identificación: ";
						Leer ced;
						
						Para j<-1 Hasta i-1 Con Paso 1 Hacer
							Si ced = id[j] Entonces
								estado<-1;
							FinSi
						FinPara
						Si estado = 1 Entonces
							Escribir "La identificación ingresada ya existe.  Digite una nueva identificación.";
						SiNo
							id[i] <- ced;
						FinSi
					Hasta Que estado = 0;	
					
					
					Escribir "Digite nombre: ";
					Leer nombres[i];
					Repetir
						Escribir "Digite edad: ";
						Leer edad[i];
						Si edad[i] <= 0 Entonces
							Escribir "La edad debe ser positiva";
						FinSi
					Hasta Que edad[i] > 0;
					
					i<-i+1;
					
					Repetir
						Escribir "¿Desea registrar otro usuario[s/S/n/N]?";
						Leer opc;
					Hasta Que opc = 's' o opc = 'S' o opc = 'n' o opc = 'N';
					
					Si i >= 100 Entonces
						Escribir "[Advertencia: Ha llegado al límite de 100 usuarios.  Ya no puede ingresar mas usuarios al sistema]";
					FinSi
				Hasta Que opc = 'n' o opc = 'N' o i > 100;
				
				Escribir "Los datos se registraron con éxito";
				Escribir "Presione una tecla para volver a menú";
				Esperar Tecla;
			2:
				Limpiar Pantalla;
				Escribir "::: Listado de usuarios registrados :::";
				Escribir "|Id        |   Nombres         |  Edad  |";
				Para j<-1 Hasta i-1 Con Paso 1 Hacer
					Escribir id[j], "      ", nombres[j], "                ", edad[j];
				FinPara
				Escribir "Presione una tecla para volver a menú";
				Esperar Tecla;
			3:
				Limpiar Pantalla;
				Escribir "::: Búsqueda de usuarios :::";
				Escribir "Digite el Id del usuario a buscar: ";
				Leer ide;
				estado<-0;
				Para j<-1 Hasta i-1 Con Paso 1 Hacer
					Si ide = id[j] Entonces
						Escribir "Identificación: ", id[j];
						Escribir "Nombres: ", nombres[j];
						Escribir "Edad: ", edad[j];
						estado<-1;
					FinSi
				FinPara
				Si estado = 0 Entonces
					Escribir "El usuario no existe";
				FinSi
				
				Escribir "Presione una tecla para volver a menú";
				Esperar Tecla;
			4:
				Escribir "Has salido del sistema.";
				Esperar Tecla;
			De Otro Modo:
				Escribir "Opción incorrecta.  Digite nuevamente.";
				Esperar Tecla;
		FinSegun
	Hasta Que op = 4;
FinProceso