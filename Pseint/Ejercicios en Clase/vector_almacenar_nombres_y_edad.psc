Proceso vector_almacenar_nombres_y_edades
	//Definir variables
	Definir nombres Como Caracter;
	Definir n,edad Como Entero;
	//Declarar vectores
	Dimension  nombres[5];
	Dimension  edad[5];
	//Registrar Datos en los vectores
	nombres[1] <- "Juan";
	nombres[2] <- "Sebastian";
	nombres[3] <- "Maria";
	nombres[4] <- "Sofia";
	nombres[5] <- "Rene";
	
	edad[1] <- 10;
	edad[2] <- 15;
	edad[3] <- 20;
	edad[4] <- 22;
	edad[5] <- 9;
	
	
	//Mostrar Datos almacenados en los vectores
	Para n<-1 Hasta 5 Con Paso 1 Hacer		
		Escribir "* " ,nombres[n]," tiene ",edad[n]," años de edad.";		
	FinPara	

FinProceso
