Algoritmo ecuacion_cuadratica	
	Definir a,b,c,x1,x2 como Real;
	Escribir "";
	Escribir ":::: PROGRAMA PARA CALCULAR UNA ECUACION CUADRATICA O DE SEGUNDO GRADO ::::";
	Escribir "";
	Escribir "..........................................................";
	Escribir ". La ecuación del segundo Grado es asi: ax2 + bx + c = 0 .";
	Escribir ". 			EJEMPLO: 2x2 + 5x + 3 = 0                  .";
	Escribir "..........................................................";
	Escribir " AX^2 + BX + C ";
	Escribir "================================";
	Escribir "Digite el primer coeficiente  a: ";
	Leer a;
	Limpiar Pantalla; 
	Escribir ":::: PROGRAMA PARA CALCULAR UNA ECUACION CUADRATICA O DE SEGUNDO GRADO ::::";
	Escribir "";
	Escribir "..........................................................";
	Escribir ". La ecuación del segundo Grado es asi: ax2 + bx + c = 0 .";
	Escribir ". 			EJEMPLO: 2x2 + 5x + 3 = 0                  .";
	Escribir "..........................................................";
	Escribir a,"x^2 + bx + c ";
	Escribir "............................";
	Escribir "Digite el segundo coeficiente  b: ";
	Leer b;
	Limpiar Pantalla; 
	Escribir ":::: PROGRAMA PARA CALCULAR UNA ECUACION CUADRATICA O DE SEGUNDO GRADO ::::";
	Escribir "";
	Escribir "..........................................................";
	Escribir ". La ecuación del segundo Grado es asi: ax2 + bx + c = 0 .";
	Escribir ". 			EJEMPLO: 2x2 + 5x + 3 = 0                  .";
	Escribir "..........................................................";
	Escribir a,"x^2 + ",b,"x + c ";
	Escribir "............................";
	Escribir "Digite el tercer coeficiente  c: ";
	Leer c;
	Limpiar Pantalla; 
	Escribir ":::: PROGRAMA PARA CALCULAR UNA ECUACION CUADRATICA O DE SEGUNDO GRADO ::::";
	Escribir "";
	Escribir "..........................................................";
	Escribir ". La ecuación del segundo Grado es asi: ax2 + bx + c = 0 .";
	Escribir ". 			EJEMPLO: 2x2 + 5x + 3 = 0                  .";
	Escribir "..........................................................";
	Escribir a,"x^2 + ",b,"x"," + ",c;
	Escribir "............................";
	Escribir ".			RESULTADO             .";
	Escribir "................................."
	Escribir "";	
	discriminante<-(b^2)-((4*a)*c);//hallamos la discriminante
	x1<- ((-b)+((rc(discriminante))))/(2*a); //Apliacamos formula de ecuaciones cuadraticas
	x2<- ((-b)-((rc(discriminante))))/(2*a);	
	Escribir "";
	Escribir "RESULTADO POSITIVO"
	Escribir "x1=",x1;
	Escribir "";
	Escribir "RESULTADO NEGATIVO"
	Escribir "x2=",x2;
	
	
	
	
	
FinAlgoritmo
