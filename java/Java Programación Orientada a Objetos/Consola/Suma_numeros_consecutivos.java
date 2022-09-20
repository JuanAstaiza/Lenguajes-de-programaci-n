import java.util.*;
public class Suma_numeros_consecutivos{
	public static void main (String[] args){
		Scanner leer = new Scanner(System.in);
		System.out.print(":::: MOSTRAR NUMEROS FIBONACCI ::::\n");
		int n,f=1;
		int t1=1;
		int t2;
		String linea=" ";
		System.out.print("¿Cuantos numeros desea generar?: ");
		n = leer.nextInt();	
		for(int i=1;i<=n;i++){
			t2=f;
			f=t1 + f;
			t1 = t2;
			System.out.print(t1+linea);			
		}
	}
}