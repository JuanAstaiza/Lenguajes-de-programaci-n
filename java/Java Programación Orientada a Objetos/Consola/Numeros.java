import java.util.*; // Esto sirve para importar la libreria

public class Numeros{
	public static void main(String[] args){ 
		//Declaración de Variables
		int n1,n2,res;
		
		Scanner sc = new Scanner(System.in); // Intanciación
		//Leer el Primer numero
		System.out.println("Introduca el Primer Numero: ");
		n1 = sc.nextInt(); //Leer un entero por teclado
		//Leer el segundo Numero
		System.out.println("Introduca el Segundo Numero: ");
		n2 = sc.nextInt(); //Leer un entero por teclado
		// Mostrar Resultado
		res=n1+n2; //Asignacion
		System.out.println("LOS NUMEROS INTRODUCIDOS SON:  "+n1+" y "+n2);	
		System.out.println("La suma de los Numeros ES: "+res);		
	}
}