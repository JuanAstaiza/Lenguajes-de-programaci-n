Algoritmo datos_servicio_militar
	Definir nombres_completos,genero,opcion como Caracter;
	Definir booleano_genero como Logico;
	Definir edad Como Entero;
	nombres_completos<-"";genero<-"";opc<-"";edad<-0;booleano_genero<-Falso;
	Escribir "VERIFICACION DEL SERVICIO MILITAR";
	Escribir "___________________________________";
	Escribir "";
	Escribir "Escriba los Nombres Completos de la Persona: ";
	Leer nombres_completos;
	Escribir "Escriba los Edad de la Persona: ";
	Leer edad;
	Mientras booleano_genero==Falso Hacer
		Escribir "Escriba el Género de la Persona (M o F): ";
		Leer genero;
		Si genero=="M" O  genero=="F" Entonces
			booleano_genero=Verdadero;
			Si genero=="M" Entonces
				Si edad < 18 Entonces
					Escribir "Usted no aplica.";
				SiNo
					Si edad >= 18 Y edad < 25  Entonces
						Escribir "Debe ir al Ejército por 12 meses.";							
					SiNo
						Si edad >= 25 Entonces
							Escribir "Debe ir al Ejército por 24 meses.";					
						Fin Si
					Fin Si
				Fin Si
			SiNo				
				//GENERO ES FEMENINO (F)
				booleano_genero=Falso;
				Si edad>=18 Y genero=="F" Entonces
					Mientras booleano_genero==Falso Hacer
						Escribir "Desea ir al Ejército(SI/NO)?";
						Leer opc;
						Si opc=="SI" O opc=="NO" Entonces							
							booleano_genero=Verdadero;
							Si opc=="SI" Entonces
								Si edad<25 Entonces
									Escribir "Usted va por 3 meses.";									
								SiNo
									Si edad>25 Entonces
										Escribir "Usted va por 6 meses.";							
									Fin Si
								Fin Si								
							SiNo
								Escribir "Muchas Gracias por participar al Servicio Militar.";
							Fin Si
						SiNo
							booleano_genero=Falso;
							Escribir "________________________________";
							Escribir "Opción Incorrecta Por favor ingrese nuevamente (SI/NO).";
							Escribir "_________________________________";
						Fin Si
					Fin Mientras
				Fin Si
			Fin Si
		SiNo
			booleano_genero=Falso;
			Escribir "__________________________________";
			Escribir "Genero Incorrecto.";
			Escribir "Escriba Correctamente el Género.(M o F).";
			Escribir "__________________________________";
		Fin Si
	Fin Mientras
FinAlgoritmo
