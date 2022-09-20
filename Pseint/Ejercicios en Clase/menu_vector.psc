Proceso menu_vector
	Limpiar Pantalla;
	Definir contador,boleano_id,i,a,id_registrados,id,dim_id,op,cant,edad,dim_edad,buscador_id Como Entero;
	Definir dim_nombres,nombres como Cadena;	
	
	contador<-0;
	
	Dimension dim_nombres[100];
	Dimension dim_edad[100];
	Dimension dim_id[100];
	
	Limpiar Pantalla;
	
		Repetir
		Escribir ":: Menú de opciones ::";
		Escribir "[1] Registrar Datos.";
		Escribir "[2] Listar Datos Registrados.";
		Escribir "[3] Buscar Usuario.";
		Escribir "[4] Salir.";
		Escribir "Digite la opcion: ";
		Leer op;
		Segun op Hacer
			1:
				
				Escribir "¿Cantidad de datos a registrar?";
				Leer cant;				
				Para i<-0 Hasta cant-1 Con Paso 1 Hacer	
					contador<-contador+1;					
					Repetir
						Escribir "Digite identificación de la persona ",contador,"",": "; 
						Leer id;
						Si contador=1 Entonces
							dim_id[contador] <- id;
						SiNo			
							boleano_id<-0;
							Para a<-0 Hasta contador Con Paso 1 Hacer							
								id_registrados<-dim_id[a+1];
								Si id_registrados=id Entonces
									//Se repite
									boleano_id <- 1;
									Escribir "ERROR. Identificación Repetida.Intente Nuevamente."
								Fin Si
							Fin Para
						Fin Si
						Si boleano_id=0 Entonces
							dim_id[contador] <- id;
						Fin Si
					Hasta Que boleano_id=0;							
					Escribir "Digite nombres de la persona ",contador,"",":"; 
					Leer nombres;
					dim_nombres[contador] <- nombres;
					Repetir
						Escribir "Digite edad de la persona ",contador," ",":"; 
						Leer edad;
						Si edad<0 Entonces
							Escribir "ERROR. Edad debe ser positiva. Intente nuevamente.";
						Fin Si
					Hasta Que edad>0;				
					dim_edad[contador] <- edad;					
				FinPara		
				Escribir "Los datos se registraron con Exito.";				
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;				
			2:		
				Escribir ":: Listado de los Usuarios registrados ::";
				Escribir "No "," | "," id "," | "," Nombres "," | "," Edad";	 
				Para i<-0 Hasta contador-1 Con Paso 1 Hacer
					Escribir i+1,"  ",dim_id[i+1],"  ",dim_nombres[i+1],"  ",dim_edad[i+1];		 
				FinPara
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;				
			3:
				Escribir ":: Buscar Usuario por Identificación ::";
				Repetir
					Escribir "Digite la Identificación de la Persona a buscar: ";
					Leer buscador_id;
					boleano_id<-0;
					Para i<-0 Hasta contador-1 Con Paso 1 Hacer
						id_registrados<-dim_id[i+1];
						Si id_registrados==buscador_id Entonces
							boleano_id<-1;
							Escribir "Los datos del Usuario son: ";
							Escribir "ID : ",dim_id[i+1];
							Escribir "NOMBRE : ",dim_nombres[i+1];
							Escribir "EDAD : ",dim_edad[i+1];
						Fin Si
					Fin Para	
					Si boleano_id==0 Entonces
						Escribir "La Identificación no esta registrada.";
					Fin Si
				Hasta Que boleano_id=1;				
				Escribir "Presione una tecla para volver al menú.";	
				Esperar Tecla;	
			4:
				Escribir "Has salido del Sistema.";
				Esperar Tecla;
			De Otro Modo:
				Escribir "Opcion Incorrecta. Digite nuevamente.";
				Esperar Tecla;
		FinSegun
	Hasta Que op = 4;
FinProceso
