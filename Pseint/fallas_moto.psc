Algoritmo fallas_moto
	Definir estado,ide,id,ced, i, op_principal,op_gn,j,op_ac,ide_a,OP_fallas Como Entero;
	Definir nombres,apellidos,opc_E, opc,recomendacion Como Caracter;
	definir rec1,rec2,rec3,rec4,rec5 Como Caracter;
	i<-1;
	Dimension  id[200];
	Dimension  nombres[200];
	Dimension  apellidos[200];
	Dimension recomendacion[200];
	Repetir
		Escribir "::::: MENU PRINCIPAL ::::::";
		Escribir "";
		Escribir "[1] Gestion del cliente.";
		Escribir "[2] Fallas básicas cuando la moto no tiene corriente.";
		Escribir "[3] Salir.";
		Escribir "Escoja una opcion: ";
		Leer op_principal;
		Segun op_principal Hacer
			1:
				Limpiar Pantalla;
				Escribir "";
				Escribir "::::: Gestion del Cliente ::::::";
				Escribir "";
				Repetir
					Escribir "[1] Agregar nuevo Cliente.";
					Escribir "[2] Actualizar informacion del Cliente.";
					Escribir "[3] Borrar Cliente.";
					Escribir "[4] Consultar información del Cliente.";
					Escribir "[5] Regresar al MENU PRINCIPAL.";
					Escribir "Escoja una opcion: ";
					Leer op_gn;		
					Segun op_gn Hacer
						1:
							Limpiar Pantalla;
							Repetir
								Limpiar Pantalla;
								Escribir "";
								Escribir "::::: Agregar nuevo Cliente ::::::";
								Escribir "";
								Repetir
									estado <- 0;
									Escribir "Digite la identificación del Cliente: ";
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
								
								Escribir "Digite los nombres del Cliente: ";
								Leer nombres[i];
								Escribir "Digite los apellidos del Cliente: ";
								Leer apellidos[i];
								
								i<-i+1;	
								
								Repetir
									Escribir "¿Desea registrar otro usuario[s/S/n/N]?";
									Leer opc;
								Hasta Que opc = 's' o opc = 'S' o opc = 'n' o opc = 'N';
								
								Si i >= 200 Entonces
									Escribir "[Advertencia: Ha llegado al límite de 200 usuarios.  Ya no puede ingresar mas usuarios al sistema]";
								FinSi
								
							Hasta Que opc = 'n' o opc = 'N' o i > 200;	
							
							Escribir "Los datos se registraron con éxito";
							Escribir "Presione una tecla para volver a menú";
							Esperar Tecla;
							Limpiar Pantalla;
						2:
							Repetir
								Limpiar Pantalla;
								Escribir "";
								Escribir ":::::  Actualizar informacion del Cliente ::::::";
								Escribir "";
								Escribir "[1] Actualizar identificación.";
								Escribir "[2] Actualizar nombres.";
								Escribir "[3] Actualizar apellidos.";
								Escribir "[4] REGRESAR al MENU (Gestion del Cliente)..";
								Leer op_ac;
								Segun op_ac Hacer
									1:
										Limpiar Pantalla;
										Escribir "::: Búsqueda de usuarios :::";
										Escribir "Digite el Identificación del usuario a Actualizar: ";
										Leer ide_a;
										estado<-0;
										Para j<-1 Hasta i-1 Con Paso 1 Hacer
											Si ide_a = id[j] Entonces
												Escribir "Identificación Anterior: ", id[j];
												Escribir "Digite la nueva idetificación: ";
												Leer ide;
												id[j]<-ide;
												estado<-1;
												Escribir "Los datos se actualizaron con éxito";
											FinSi
										FinPara
										
										Si estado = 0 Entonces
											Escribir "El usuario no existe";
										FinSi
										
									2:
										Limpiar Pantalla;
										Escribir "::: Búsqueda de usuarios :::";
										Escribir "Digite el Identificación del usuario a Actualizar: ";
										Leer ide;
										estado<-0;
										Para j<-1 Hasta i-1 Con Paso 1 Hacer
											Si ide = id[j] Entonces
												Escribir "Nombres Anteriores: ", nombres[j];
												Escribir "Digite los nuevos nombres: ";
												Leer nombres2;
												nombres[j]<-nombres2;
												estado<-1;
												Escribir "Los datos se actualizaron con éxito";
											FinSi
										FinPara
										Si estado = 0 Entonces
											Escribir "El usuario no existe";
										FinSi
									3:
										Limpiar Pantalla;
										Escribir "::: Búsqueda de usuarios :::";
										Escribir "Digite el Identificación del usuario a Actualizar: ";
										Leer ide;
										estado<-0;
										Para j<-1 Hasta i-1 Con Paso 1 Hacer
											Si ide = id[j] Entonces
												Escribir "Apellidos Anteriores: ", apellidos[j];
												Escribir "Digite los nuevos apellidos: ";
												Leer apellidos2;
												apellidos[j]<- apellidos2;
												estado<-1;
												Escribir "Los datos se actualizaron con éxito";
											FinSi
										FinPara
										Si estado = 0 Entonces
											Escribir "El usuario no existe";
										FinSi
										
									4:
										Limpiar Pantalla;
										Escribir "USTED SE HA REGRESADO DEL MENU (Gestion del Cliente).";
										Escribir "Presione una tecla para continuar...";
										Esperar Tecla;		
									De Otro Modo:
										Escribir "OPCION INCORRECTA";
								FinSegun;
								
							Hasta Que op_ac=4;
						Limpiar Pantalla;
						3:
							Limpiar Pantalla;
							Escribir "::::: Borrar Cliente ::::::";
							Escribir "Digite la Identificación del usuario a Eliminar: ";
							Leer ide;
							estado<-0;
							Para j<-1 Hasta i-1 Con Paso 1 Hacer
								Si ide = id[j] Entonces
									Escribir "";
									Escribir "DATOS USUARIO ELIMINAR";
									Escribir "";
									Escribir "Identificación: ", id[j];
									Escribir "Nombres: ", nombres[j];
									Escribir "Edad: ", apellidos[j];
									Escribir "";
									Repetir
										Escribir "¿Desea eliminar este usuario[s/S/n/N]?";
										Leer opc_E;
									Hasta Que opc_E = 's' o opc_E = 'S' o opc_E = 'n' o opc_E = 'N';
									Si opc_E= 's' o opc_E= 'S' Entonces
										id[j]<-0000000;
										nombres[j]<-"Eliminado";
										apellidos[j]<-"Eliminado";
										Escribir "El registro se elimino  con éxito";				
									FinSi
									estado<-1;
								FinSi
								
							FinPara
										
							Si estado = 0 Entonces
								Escribir "El usuario no existe";
							FinSi			
							Escribir "Presione una tecla para volver a menú";
							Esperar Tecla;	
						4:
							Limpiar Pantalla;
							Escribir "::::: Consultar información del Cliente ::::::";
							Escribir "Digite la Identificación del usuario a buscar: ";
							Leer ide;
							estado<-0;
							Para j<-1 Hasta i-1 Con Paso 1 Hacer
								Si ide = id[j] Entonces
									Escribir "Identificación: ", id[j];
									Escribir "Nombres: ", nombres[j];
									Escribir "Apellidos: ", apellidos[j];
									estado<-1;
								FinSi
							FinPara
							Si estado = 0 Entonces
								Escribir "El usuario no existe";
							FinSi			
						5: 
							Limpiar Pantalla;
							Escribir "USTED SE HA REGRESADO DEL MENU (Gestion del Cliente).";
							Escribir "Presione una tecla para continuar...";
							Esperar Tecla;
						De Otro Modo:
							Escribir "OPCION ICORRECTA";
					FinSegun;
				Hasta Que op_gn=5;
			2:
				Limpiar Pantalla;
				Escribir ".:Fallas básicas cuando la moto no tiene corriente:. ";
				Escribir "";
				Escribir "Digite la Identificación: ";
				Leer ide;
				estado<-0;
				Para j<-1 Hasta i-1 Con Paso 1 Hacer
					Si ide = id[j] Entonces
						Escribir "Identificación: ", id[j];
						Escribir "Nombres: ", nombres[j];
						Escribir "Apellidos: ", apellidos[j];
						estado<-1;
						Escribir "";
							Escribir '   1. Bujia quemada';
							Escribir '   2. Problemas en Campo magnetico';
							Escribir '   3. Bobina de alta averiada';
							Escribir '   4. Problemas en Cableado';
							Escribir '   5. Problemas en CDI';
							Escribir '   6.  Consultar falla';
							Escribir '   7. Salir ';
							Escribir 'Elija una opción (1-6): ';
							Leer OP_fallas;
							Segun OP_fallas  Hacer
								1:	rec1<-"Recomendaciones bujia : 1.Reemplazar la bujia. 2.Revisar la loza y limpiarla. 3.Revisar el electrodo (lijarlo)";													
									Escribir "Las recomendaciones de su falla son:";
									Escribir rec1;
									recomendacion[j]<-rec1;
								2:
									rec2<-"Recomendaciones Volante o campo magnetico : 1.Extraer el centro magnetico. 2.Revisar y ajustar la platinera de bobinas. 3.Revisar el voltaje de las bobinas (deben funcionar con 12 voltios)";
									Escribir "Las recomendaciones de su falla son:";
									Escribir rec2;
									recomendacion[j]<-rec2;	
								3:
									rec3<-"Recomendaciones bobina de alta: 1.Revisar conexion entre la bobina y el cable de alta (Mugre o agua). 2.Medir voltios utilizando un multimetro (6 o 12v). 3. En caso de estar quemada reemplazarla.";
									Escribir "Las recomendaciones de su falla son:";
									Escribir rec3;
									recomendacion[j]<-rec3;	
								4:
									rec4<-"Recomendaciones cableado: 1.revisar continuidad usando el multimetro. 2.Limpiar terminales 3.Analizar si el problema se encuentra en el interrupor de corriente ( RUN ). 4.Hacer un análisis con el multímetro colocándolo en continuidad para revisar. 5.sigilosamente los cables de color café, negro con blanco y naranja que son los cables principales para que la moto encienda.";
									Escribir "Las recomendaciones de su falla son:";
									Escribir rec4;
									recomendacion[j]<-rec4;
								5:
									rec5<-"Recomendación en caso de CDI Averiado: 1.Revisar conexión de el cable cafe y negro con blanco y terminales de conexión. 2.Reemplazar por nuevo";
									Escribir "Las recomendaciones de su falla son:";
									Escribir rec5;
									recomendacion[j]<-rec5;
								6:
									Escribir "LA FALLA DEL CLIENTE ES:";
									Escribir recomendacion[j];
								7:
									Escribir '  Si desconoce aspectos fundamentales leer el manual de fabricante YAMAHADT125 ';
									Escribir 'Esperamos que la información sea util';
								De Otro Modo:
									Escribir 'Opción no válida';
							FinSegun
							Escribir 'Presione enter para continuar';
							Esperar Tecla;										
					FinSi
				FinPara
				Si estado = 0 Entonces
					Escribir "El usuario no existe";
				FinSi			
				
			3:
				Limpiar Pantalla;
				Escribir "Usted a salido del sistema";
				
		FinSegun;
	Hasta Que op_principal=3;
FinAlgoritmo
