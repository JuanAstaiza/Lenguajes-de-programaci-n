Algoritmo Empleados 
	Definir  aux_t,salu,pens Como  Real;
	Definir contador,estado,empleado Como Entero;
	Definir total_sb,total_sd,total_ax_tranpo,total_sn Como Entero;
	Definir prom_sb,prom_sd,prom_ax_tranpo,prom_sn Como Entero;
	Definir n_mayor, n_menor Como Entero;
	Definir nom_mayor, nom_menor Como Caracter;
	contador<-1;
	empleado<-contador;
	total_sb<-0;
	total_sd<-0;
	total_ax_tranpo<-0;
	total_sn <-0;
	prom_sb<-0;
	prom_sd<-0;
	prom_ax_tranpo<-0;
	prom_sn<-0;
	n_mayor<-0;
	n_menor<-0;
	Dimension  cc[1000000000];
	Dimension  nombres[1000000000];
	Dimension  apellidos[1000000000];
	Dimension  cargo[1000000000];
	Dimension  salario_basico[1000000000];
	Dimension  dias_trabajados[1000000000];
	Dimension  salario_devengado[1000000000];
	Dimension  aux_transporte[1000000000];
	Dimension  salud[1000000000];
	Dimension  pension[1000000000];
	Dimension  valor_neto[1000000000];
	Escribir "PROCESAMIENTO DE EMPLEADOS";
	Escribir "___________________________________";
	Escribir "";
	Repetir
		Escribir ":: Menú de opciones ::";
		Escribir "::::::::::::::::::::::::::::::::";
		Escribir "[1] Registrar empleados";	
		Escribir "[2] Ver Datos por empleado";
		Escribir "[3] Ver Resultados";
		Escribir "[4] Salir";
		Escribir "Digite la opcion: ";
		Leer op;
		Segun op Hacer
			1:
				Limpiar Pantalla;
				Escribir ":: REGISTRO DE EMPLEADOS ::";
				Escribir ":::::::::::::::::::::::::::::::::::";
				Escribir "";
				Escribir "Digite la identificación del Empleado: ";
				Leer cc[contador];
				Escribir "Digite el Nombre del Empleado: ";
				Leer nombres[contador];
				Escribir "Digite el Apellido del Empleado: ";
				Leer apellidos[contador];
				Escribir "Digite el Cargo: ";
				Leer cargo[contador];
				Escribir "Digite el salario Básico: ";
				Leer Sb;
				salario_basico[contador]<-Sb;
				Escribir "Número de Días trabajados: ";
				Leer dias_Tra;
				dias_trabajados[contador]<-dias_Tra;
				Sd=(Sb*dias_Tra)/30; //Salario desvengado
				salario_devengado[contador]<-Sd;
				
				Si Sb<=2000000 Entonces
					aux_t=(117172*dias_Tra)/30;
					aux_transporte[contador]<-aux_t;
				SiNo
					aux_t=0;
					aux_transporte[contador]<-aux_t;
				Fin Si
				
				salu=(8.5*Sd)/100;
				pens=(12*Sd)/100;
				salud[contador]<-salu;
				pension[contador]<-pens;
				valor_n=salu+pens;
				valor_neto[contador]<-(Sd+aux_t)-valor_n;
				
				contador<-contador+1;				
				Escribir 'Presione enter para continuar';
				Esperar Tecla;					
			2:
				Limpiar Pantalla;
				Escribir ":: DATOS DEL EMPLEADO EN PARTICULAR ::";
				Escribir "::::::::::::::::::::::::::::::::::::::::";
				Escribir "Digite la Identificación: ";
				Leer ced;
				Escribir "::::::::::::::::::::::::::::::::::::::::";
				Escribir "Datos: ";
				estado<-0;
				Para j<-1 Hasta contador-1 Con Paso 1 Hacer
					Si ced = cc[j] Entonces
						Escribir "Identificación: ",  cc[j];
						Escribir "Nombres: ", nombres[j];
						Escribir "Apellidos: ", apellidos[j];
						Escribir "Cargo: ", cargo[j];
						Escribir "Salario básico: ", salario_basico[j];
						Escribir "Número de dias trabajados: ", dias_trabajados[j];
						Escribir "Salario Devengado: ", salario_devengado[j];
						Escribir "Aux transporte: ", aux_transporte[j];
						Escribir "Salud: ", salud[j];
						Escribir "Pensión: ", pension[j];
						Escribir "VALOR NETO A PAGAR: ", valor_neto[j];
						estado<-1;						
						Escribir 'Presione enter para continuar';
						Esperar Tecla;										
					FinSi
				FinPara
				Si estado = 0 Entonces
					Escribir "El usuario no existe";
				FinSi	
		
			3:
				Escribir ":::  VER RESULTADOS :::";
				Escribir "::::::::::::::::::::::::::::::::::::::::";
				Para j<-1 Hasta contador-1 Con Paso 1 Hacer
					total_sb=total_sb+salario_basico[j];
					total_sd=total_sd+salario_devengado[j];
					total_ax_tranpo=total_ax_tranpo+aux_transporte[j];
					total_sn=total_sn+valor_neto[j];
				FinPara
					
				Escribir "Total de los Salarios Basicos: ",total_sb;
				Escribir "Total de los Salarios devengados: ",total_sd;
				Escribir "Total de los Aux de transporte: ",total_ax_tranpo;
				Escribir "Total de los Salarios netos: ",total_sn;
			
				prom_sb=total_sb/empleado;
				prom_sd=total_sd/empleado;
				prom_ax_tranpo=total_ax_tranpo/empleado;
				prom_sn=total_sn/empleado;
				
				Escribir "Promedio Salarios Basicos: ",prom_sb;
				Escribir "Promedio Salarios devengados: ",prom_sd;
				Escribir "Promedio Aux de transporte: ",prom_ax_tranpo;
				Escribir "Promedio Salarios netos: ",prom_sn;
				
				n_mayor <- salario_basico [1];
				n_menor <-salario_basico [1];
				Para j<-1 Hasta contador-1 Con Paso 1 Hacer
					Si salario_basico[j]>n_mayor Entonces
						n_mayor=salario_basico[j];
					SiNo
						Si salario_basico[j]<n_menor Entonces
							n_menor=salario_basico[j];
						Fin Si
					Fin Si					
				FinPara			

				Para j<-1 Hasta contador-1 Con Paso 1 Hacer
					Si n_mayor = salario_basico[j] Entonces
						nom_mayor= nombres[j];				
					FinSi
				FinPara				
				Escribir "Nombre y salario Basico del empleado que más gana: NOMBRE: ",nom_mayor," SALARIO: ",n_mayor;
				Para j<-1 Hasta contador-1 Con Paso 1 Hacer
					Si n_menor = salario_basico[j] Entonces
						nom_menor= nombres[j];				
					FinSi
				FinPara	
				Escribir "Nombre y salario Basico del empleado que menos gana: NOMBRE: ",nom_menor," SALARIO: ",n_menor;
				Esperar Tecla;				
				Escribir 'Presione enter para continuar';
				Esperar Tecla;
			
			De Otro Modo:
				Escribir "Has salido del Sistema.";
				Escribir "Presione una tecla para SALIR.";	
				Esperar Tecla;	
		Fin Segun
	Hasta Que op = 4;
	
FinAlgoritmo
