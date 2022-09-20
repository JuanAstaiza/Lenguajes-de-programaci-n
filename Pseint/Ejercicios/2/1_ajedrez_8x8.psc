Algoritmo _1_ajedrez_8x8
	//Escriba un algoritmo que reciba por teclado la posición de una de las
	//Reinas, y de acuerdo a esa coordenada muestre por pantalla al
	//usuario, el número de posiciones que tiene la Reina para moverse en
	//las diferentes direcciones. Tenga en cuenta que en el tablero solo
	//estará presente la Reina
	Definir _x,_y como Cadena;
	Definir contador,a,b como entero;
	
	Dimension c_x[8];
	c_x[1] <- "a";
	c_x[2] <- "b";
	c_x[3] <- "c";
	c_x[4] <- "d";
	c_x[5] <- "e";
	c_x[6] <- "f";
	c_x[7] <- "g";
	c_x[8] <- "h";
	
	Dimension c_y[8];
	c_y[1] <- "1";
	c_y[2] <- "2";
	c_y[3] <- "3";
	c_y[4] <- "4";
	c_y[5] <- "5";
	c_y[6] <- "6";
	c_y[7] <- "7";
	c_y[8] <- "8";
	
	//Posiciones
	Definir con_P_d,con_P_i,con_P_a,con_P_ab como Entero;	
	
	//Diagonales	
	Definir  con_D_d_a,con_D_i_a,con_D_d_ab,con_D_i_ab como Entero;
	Definir  con_D_d_a_x,con_D_i_a_x,con_D_d_ab_x,con_D_i_ab_x como Entero;
	Definir  con_D_d_a_y,con_D_i_a_y,con_D_d_ab_y,con_D_i_ab_y como Entero;
	
	Escribir ":::::::::::::::: AJEDRES ::::::::::::::::";
	Escribir "";
	Escribir "Coordenadas:";
	Escribir " X : a , b , c , d , e , f , g , h. ";
	Escribir " Y : 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8. ";
	
	contador<-0;
	Repetir
		contador<-contador+1;
		Si contador=1 Entonces
			Escribir "Escriba la posición de la Reina en la coordenada X: ";
			Leer _x;
		SiNo
			Escribir "Intente Nuevamente.";
			Escribir "Escriba la posición de la Reina en la coordenada X: ";
			Leer _x;
		Fin Si
	Hasta Que _x=="a" O _x=="b" O _x=="c" O _x=="d" O _x=="e" O _x=="f" O _x=="g" O _x=="h";
	
	contador<-0;
	Repetir
		contador<-contador+1;
		Si contador==1 Entonces
			Escribir "Escriba la posición de la Reina en la coordenada Y: ";
			Leer _y;
		SiNo
			Escribir "Intente Nuevamente.";
			Escribir "Escriba la posición de la Reina en la coordenada Y: ";
			Leer _y;
		Fin Si
	Hasta Que  _y=="1" O _y=="2" O _y=="3" O _y=="4" O _y=="5" O _y=="6" O _y=="7" O _y=="8"; 
	
	//POSICIONES
	//::::::::::::::::::::::::::::::
	
	//Posiciones a la derecha
	con_P_d<-0;
	Para a<-1 Hasta 8 Con Paso 1 Hacer		
		Si c_x[a]==_x Entonces
			Para b<-a+1 Hasta 8 Con Paso 1 Hacer
				con_P_d=con_P_d+1;
			Fin Para
		Fin Si			
	Fin Para
	
	//Posiciones a la izquierda
	con_P_i<-0;
	Para a<-1 Hasta 8 Con Paso 1 Hacer		
		Si c_x[a]==_x Entonces
			Para b<-1 Hasta a-1 Con Paso 1 Hacer
				con_P_i=con_P_i+1;
			Fin Para
		Fin Si			
	Fin Para
	
	//Posiciones hacia arriba
	con_P_a<-0;
	Para a<-1 Hasta 8 Con Paso 1 Hacer		
		Si c_y[a]==_y Entonces
			Para b<-a+1 Hasta 8 Con Paso 1 Hacer
				con_P_a=con_P_a+1;
			Fin Para
		Fin Si			
	Fin Para
	
	
	//Posiciones hacia abajo
	con_P_ab<-0;
	Para a<-1 Hasta 8 Con Paso 1 Hacer		
		Si c_y[a]==_y Entonces
			Para b<-1 Hasta a-1 Con Paso 1 Hacer
				con_P_ab=con_P_ab+1;
			Fin Para
		Fin Si			
	Fin Para
	
	//DIAGONALES
	//::::::::::::::::::::::::::::::
	
	//Posiciones diagonal derecha hacia arriba
	//Posiciones hacia arriba
	//Posiciones a la derecha
	
	Si con_P_d>con_P_a Entonces
		con_D_d_a<-con_P_a;
	SiNo
		con_D_d_a<-con_P_d;
	Fin Si
	
	//Posiciones diagonal izquierda hacia arriba
	//Posiciones a la izquierda
	//Posiciones hacia arriba	
	Si con_P_i>con_P_a Entonces
		con_D_i_a<-con_P_a;
	SiNo
		con_D_i_a<-con_P_i;
	Fin Si
	
	//Posiciones diagonal derecha hacia abajo
	//Posiciones a la izquierda
	//Posiciones hacia abajo
	Si con_P_d>con_P_ab Entonces
		con_D_d_ab<-con_P_ab;
	SiNo
		con_D_d_ab<-con_P_d;
	Fin Si
	
	//Posiciones diagonal izquierda hacia abajo
	//Posiciones hacia abajo
	//Posiciones hacia arriba
	Si con_P_i>con_P_ab Entonces
		con_D_i_ab<-con_P_ab;
	SiNo
		con_D_i_ab<-con_P_i;
	Fin Si		
	
	
	Escribir "";
	Escribir ":::::::::::: REPORTE ::::::::::::";
	Escribir "";
	Escribir "- Posiciones a la derecha: ",con_P_d;
	Escribir "- Posiciones a la izquierda: ",con_P_i;
	Escribir "- Posiciones hacia arriba: ",con_P_a;
	Escribir "- Posiciones hacia abajo: ",con_P_ab;
	Escribir "- Posiciones diagonal derecha hacia arriba: ",con_D_d_a;
	Escribir "- Posiciones diagonal izquierda hacia arriba: ",con_D_i_a;
	Escribir "- Posiciones diagonal derecha hacia abajo: ",con_D_d_ab;
	Escribir "- Posiciones diagonal izquierda hacia abajo: ",con_D_i_ab;	
	
FinAlgoritmo
