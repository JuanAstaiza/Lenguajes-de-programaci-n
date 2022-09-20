import java.util.*;
public class Comparacion_con_siete{
	public static void main (String[] args){
		Scanner leer = new Scanner(System.in);
		System.out.print(":::: COMPARACION CON EL 7 ::::\n");
		int n=7;
		int n_u,cont=0;
		String boleano="NO";
		while(boleano=="NO"){
			System.out.print("Ingrese un numero: ");
			n_u = leer.nextInt();			
			cont++;
			if(n_u>n){
				System.out.print("El numero tiene que ser menor.\n");
			}else if(n_u<n){
				System.out.print("El numero tiene que ser mayor.\n");
			}else if(n_u==n){
				boleano="SI";
				System.out.print("Correcto. Tuvo "+cont+" INTENTOS");
			}
		}
		
		
	
	}
}