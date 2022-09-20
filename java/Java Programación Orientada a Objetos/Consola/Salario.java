import java.util.*;
public class Salario{
	public static void main (String[] args){
		Scanner leer = new Scanner(System.in);
		System.out.print(":::: Salario ::::\n");
		int n,n1,n2,n3,suma=0;
		int mult1,mult2,mult3=0;
		int sal=800000;
		int sal_extra=10000;
		int sal_not=12000;
		int sal_domi=20000;
		System.out.print("Ingrese por favor Horas Extras (10.000): ");
		n = leer.nextInt();	
		mult1=n*sal_extra;
		System.out.print("Ingrese por favor Horas Noturnas  (12.000): ");
		n2 = leer.nextInt();
		mult2=n2*sal_not;
		System.out.print("Ingrese por favor Horas Dominicales  (20.000): ");
		n3 = leer.nextInt();
		mult3=n3*sal_domi;
		suma=mult1+mult2+mult3+sal;
		System.out.print("Su salario es: "+suma);
		
	
	}
}