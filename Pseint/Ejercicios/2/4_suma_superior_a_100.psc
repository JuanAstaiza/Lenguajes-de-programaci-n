Algoritmo _4_suma_superior_a_100
	//Escriba un algoritmo que reciba por pantalla N n�meros y deje de
	//solicitar n�meros hasta que la SUMA de los ya ingresados sea mayor a
	//100. 
	Definir suma,n,contador,contador_1,contador_2,contador_3,i Como Entero;
	contador<-0;
	contador_1<-0;
	contador_2<-0;
	contador_3<-0;
		
	Escribir "::::: SUMA SUPERIOR A 100 :::::";
	Escribir "";
	Escribir "--CONSEJOS:--";
	Escribir "a. �nicamente aceptar� 3 veces el n�mero 3.";
	Escribir "b. �nicamente aceptar� 2 veces el n�mero 2.";
	Escribir "c. �nicamente aceptar� 8 veces consecutivas el mismo n�mero.";
	Escribir "(Para el caso de n�meros diferentes a 2 y 3).";
	Escribir "";
	
	
	Dimension numeros[100];
	Repetir
		Escribir "Escriba un n�mero: ";
		Leer n;
		Si n==2 Entonces
			contador=contador+1;			
			Si contador>=3 Entonces
				n<-0;
				Escribir "ERROR. N�mero no aceptado.";
			Fin Si
		SiNo
			Si n==3 Entonces
				contador_1=contador_1+1;
				Si contador_1>=4 Entonces
					n<-0;
					Escribir "ERROR. N�mero no aceptado.";
				Fin Si	
			SiNo
				contador_2=contador_2+1;
				numeros[contador_2]<-n;
			FinSi			
		Fin Si	
		contador_3<-0;
		Para i<-1 Hasta contador_2 Con Paso 1 Hacer
			Si n==numeros[i] Entonces
				contador_3<-contador_3+1;		
				Si contador_3>=9 Entonces
					n<-0;
					Escribir "ERROR. N�mero no aceptado.";
				Fin Si	
			Fin Si
		Fin Para		
		suma=suma+n;
		Escribir "TOTAL ACUMULADO: ", suma;	
	Hasta Que suma>100;
	
FinAlgoritmo
