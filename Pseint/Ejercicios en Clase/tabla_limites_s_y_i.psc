Proceso tabla_limites_i_y_s
	Definir n,lim_i,lim_s,contador,resul,repeticion Como Entero;
	n<-0;
	lim_i<-0;
	lim_s<-0;
	contador<-0;
	resul<-0;
	repeticion<-0;
	
	Escribir "  PROGRAMA PARA CALCULAR LIMITE INFERIOR Y SUPERIOR";
	Escribir "_________________________________________________________";
	Escribir "";
	Repetir
		//Limpiar Pantalla; //limpia pantalla
		repeticion<-repeticion+1;
		Si repeticion>=2 Entonces
			Escribir "ERROR.";
		FinSi
		Escribir "Digite una número de la tabla de multiplicar: ";
		Leer n;
	Hasta Que n>0;		
	
	Escribir "Digite el limite superior: ";
	Leer lim_s;
	repeticion<-0;
	Repetir
		//Limpiar Pantalla; //limpia pantalla
		repeticion<-repeticion+1;
		Si repeticion>=2 Entonces
			Escribir "ERROR.";
		FinSi
		Escribir "Digite el limite inferior: ";
		Leer lim_i;		
	Hasta Que lim_i<lim_s;
	
	//RESULTADO
	Escribir "";
	Escribir "RESULTADO";
	Escribir "______________";
	contador<-lim_i;	
	Repetir
		//Limpiar Pantalla; //limpia pantalla
		resul<-n*contador;
		Escribir n, " X ", contador, " = ", resul;
		contador<-contador+1;
	Hasta Que contador>lim_s;
			
FinProceso
