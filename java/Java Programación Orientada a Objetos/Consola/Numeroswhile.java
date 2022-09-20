import java.util.*;
public class Numeroswhile{
	public static void main (String[] args){
		System.out.print(":::: MOSTRAR NUMEROS ::::\n");
		int cont=0;		
		int numero=0;
		String linea=" - ";
		Scanner teclado = new Scanner(System.in);
		System.out.print("Digite un numero: ");
		numero = teclado.nextInt();	
		while(cont<numero){
			cont++;
			if(cont==numero){
				linea=" ";
			}
			System.out.print(cont+linea);
		}
	}
}