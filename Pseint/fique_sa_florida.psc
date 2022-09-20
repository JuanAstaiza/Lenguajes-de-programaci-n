Algoritmo fique_sa_florida
	
	
	Definir op,toneladas,sum_toneladas,op_calidad,pagoC,pago,ide,j,j2,i,i2,ced Como Entero;
	Definir opc Como Caracter;
	
	Definir cantidad_productos,cantidad_productos2,sum_productos,sum_p,id2,id,pagoC2 Como Entero;
	Definir tipo_calidad,tipo_calidad2,nombres_completo Como Caracter;
	
	Dimension id2[200];
	
	Dimension cantidad_productos2[200];
	Dimension tipo_calidad2[200];
	Dimension pagoC2[200];
	
	
	i<-1;
	i2<-0;
	sum_p<-0;
	
	Dimension id[200];
	Dimension nombres_completo[200];
	
	Dimension cantidad_productos[200];
	Dimension tipo_calidad[200];
	Dimension pagoC[200];
	
Escribir "";
Escribir ":::: SISTEMA FIQUE S.A LA FLORIDA ::::";
Escribir "";
	Repetir
		Escribir ":::: MENU PRINCIPAL ::::"; 
		Escribir "";
		Escribir "[1] Registro del Cliente";
		Escribir "[2] Registro del ingresos en toneladas.";
		Escribir "[3] Informacion General de los Clientes.";
		Escribir "[4] Informacion General en Individual.";
		Escribir "[5] Salir";
		Escribir "Elija una opción (1-5): ";
		Leer op;
		Segun op Hacer
			1: 
				Limpiar Pantalla;
				Escribir "";
				Escribir "::::: REGISTRO DEL CLIENTE :::::";
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
						Escribir "Digite el nombre completo del cliente: ";
						Leer nombres_completo[i];
						Escribir "Los datos se registraron con éxito";
					FinSi
				Hasta Que estado = 0;	
			
				i<-i+1;					
		
				Escribir "Presione una tecla para volver a menú";
				Esperar Tecla;				
				
			2:
				i2<-i2+1;
				Limpiar Pantalla;
				Escribir "";
				Escribir "::::  Registro del ingresos en toneladas. ::::";
				Escribir "";
				Escribir "Digite el Identificación del usuario a buscar: ";
				Leer ide;
				estado<-0;
				Para j<-1 Hasta i-1 Con Paso 1 Hacer
					Si ide = id[j] Entonces
						Escribir "::::: DATOS DEL CLIENTE :::::"
						Escribir "Identificación: ", id[j];
						id2[i2]<-id[j];
						Escribir "Nombres Completos: ", nombres_completo[j];
						Escribir "Cantidad de productos Acumulados:",cantidad_productos[j];
						Escribir "Valor total de pago:",pagoC[j];
										
						Escribir "Digite la cantidad de productos en toneladas: ";
						Leer toneladas;
						sum_productos<-cantidad_productos[j]+toneladas;
						cantidad_productos[j]<-sum_productos;
						cantidad_productos2[i2]<-toneladas;
						Repetir
							Escribir "";
							Escribir "::::  Registro del tipo de calidad. ::::"; 
							Escribir "";
							Escribir "[1] Buena.";
							Escribir "[2] Regular.";
							Escribir "[3] Mala.";
							Leer op_calidad;
							Segun op_calidad Hacer
								1:									
									Escribir "EL TIPO DE CALIDAD DEL PRODUCTO ES: BUENO";
									tipo_calidad[j]<-"Buena.";
									pago<-toneladas*2600000;	
									sum_p<-pagoC[j]+pago;
									pagoC[j]<-sum_p;	
									
									tipo_calidad2[i2]<-"Buena.";
									pagoC2[i2]<-pago;
									
									
									
								2:
									Escribir "EL TIPO DE CALIDAD DEL PRODUCTO ES: REGULAR";
									tipo_calidad[j]<-"Regular.";
									pago<-toneladas*2000000;
									sum_p<-pagoC[j]+pago;
									pagoC[j]<-sum_p;
									
									tipo_calidad2[i2]<-"Regular.";
									pagoC2[i2]<-pago;
								3:
									Escribir "EL TIPO DE CALIDAD DEL PRODUCTO ES: MALA";
									tipo_calidad[j]<-"Mala.";
									pago<-toneladas*1500000;
									sum_p<-pagoC[j]+pago;
									pagoC[j]<-sum_p;	
																		
									tipo_calidad2[i2]<-"Mala.";
									pagoC2[i2]<-pago;
									
								De Otro Modo:
									Escribir "OPCION INCORRECTA";
							Fin Segun
						Hasta Que op_calidad=1 o op_calidad=2 o op_calidad=3						
						estado<-1;
					FinSi
				FinPara
				Si estado = 0 Entonces
					Escribir "El usuario no existe";
				FinSi			

				
				Escribir "Presione una tecla para continuar..."
				Esperar tecla;
			
			3:
				Limpiar Pantalla;
				Escribir "";
				Escribir "::::  Informacion Valor a Pagar a Clientes. ::::";
				Escribir "";
				Escribir " ID || NOMBRES COMPLETOS || CANTIDAD PRODUCTOS  || VALOR A PAGAR"
				Para j<-1 Hasta i-1 Con Paso 1 Hacer
					Escribir  id[j]," || ",nombres_completo[j]," || ",cantidad_productos[j]," || $",pagoC[j];
					sum_totalpago<-sum_totalpago+pagoC[j]
					sum_toneladas<-sum_toneladas+cantidad_productos[j];
				FinPara
				Escribir "SUMA TOTAL DE PAGO (Todos los clientes) : $",sum_totalpago;
				Escribir "SUMA DE CANTIDAD DE PRODUCTOS (Todos los clientes): ",sum_toneladas;
				
				Escribir "Presione una tecla para continuar..."
				Esperar tecla;
			4:
				Limpiar Pantalla;
				Escribir "::::: Consultar información del Cliente ::::::";
				Escribir "Digite la Identificación del usuario a buscar: ";
				Leer ide;
				estado<-0;
				cont=0;
				Para j<-1 Hasta i-1 Con Paso 1 Hacer
					Si ide = id[j] Entonces
						Escribir "Identificación: ", id[j];
						Escribir "Nombres Completos: ", nombres_completo[j];
						Escribir "";
						Escribir " No || CANTIDAD PRODUCTO  || TIPO CALIDAD || VALOR A PAGAR"
						Para j2<-1 Hasta i2 Con Paso 1 Hacer
							Si ide = id2[j2] Entonces			
								cont=cont+1;
								Escribir  cont," || ",cantidad_productos2[j2]," || ",tipo_calidad2[j2]," || $",pagoC2[j2];
							FinSi
						Fin Para	
						Escribir "Cantidad de productos Acumulados: ",cantidad_productos[j];
						Escribir "Valor total de pago: $",pagoC[j];
						estado<-1;
					FinSi
				
				FinPara
				Si estado = 0 Entonces
					Escribir "El usuario no existe";
				FinSi			
			5:
				Escribir "USTED HA SALIDO DEL SISTEMA.";
				Limpiar Pantalla;
			De Otro Modo:
				Escribir "OPCION INCORRECTA. Por favor intente nuevamente.Gracias."
				Escribir "Presione una tecla para continuar..."
				Esperar tecla;
				Limpiar Pantalla;
		Fin Segun
	Hasta Que op=5;
	
FinAlgoritmo
