Proceso Notas
	Definir nota1, nota2,nota3,def,prom_notas como real;
	nota1<-0;nota2<-0;nota3<-0;
	Escribir "CALCULAR DEFINITIVA";
	Escribir "______________________";
	Escribir "";
	Escribir "Escriba la nota1: ";
	Leer nota1;
	Escribir "Escriba la nota2: ";
	Leer nota2;
	prom_notas<-(nota1+nota2)/2;
	Escribir "El promedio de notas es: ",prom_notas;
	Si prom_notas >= 2.5 Entonces
		Escribir "Ingrese la Nota Definitiva: ";
		Leer nota3;
		def<-(nota1*0.3)+(nota2*0.3)+(nota3*0.4);
		Si def >=3 Entonces
			Escribir "Aprobó con: ",def;
		SiNo
			Escribir "Perdió con: ",def;
		FinSi
	SiNo
		Escribir "Usted no puede presentar Examen Final.";
	FinSi	
	
FinProceso
