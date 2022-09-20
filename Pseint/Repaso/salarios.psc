Algoritmo salarios
	contador<-0;
	Dimension nombres(3),valor_pagar(3);
	Escribir "Programa para Calcular el Salario de los Trabajadores";
	Escribir "______________________________________________________";
	Escribir "";
	Escribir "";
	Repetir
		contador<-contador+1;
		Escribir "Escriba Nombres de la Persona",contador," :";
		Leer nombres(contador);
		Escribir "Escriba los apellidos de la Persona",contador," :";
		Leer apellidos;
		Escribir "Escriba el Número de Horas de la Persona",contador," :";
		Leer num_horas;
		Escribir "Escriba Valor de la Hora de la Persona",contador," :";
		Leer valor_hora;
		valor_pagar(contador)<-num_horas*valor_hora;
		total_horas<-total_horas+num_horas;
	Hasta Que contador==3;
	
	contador<-0;
	Escribir "Nombres y Salarios: "
	Repetir	
		contador<-contador+1;
		Escribir "El nombre del persona",contador," es:",nombres(contador),". Su salario es: ",valor_pagar(contador);		
	Hasta Que contador==3;
	
	contador<-0;
	Escribir "Total a pagar en Salarios (empresa): "
	Repetir
		contador<-contador+1;
		total_pagar<-total_pagar+valor_pagar(contador);
	Hasta Que contador==3;
	Escribir total_pagar;
	
	Escribir "Promedio Salarios(empresa): ",total_pagar/3;
	Escribir "Total horas: ",total_horas;
	
FinAlgoritmo
