import java.util.*;
public class Iem{
	public static void main (String[] args){
		System.out.print(":::: PROGRAMA IEM (INDICE DE MASA CORPORAL) ::::\n");
		float iem=0;		
		float peso=0;
		float altura=0;
		Scanner teclado = new Scanner(System.in);
		System.out.print("Digite el Peso (Kg): ");     
		peso = teclado.nextFloat();
		System.out.print("Digite la Altura(m): ");  
		altura = teclado.nextFloat();
		iem=(peso/(altura*altura));
		if(iem<18.5){
			System.out.print("Su composición corporal es: Bajo Peso ("+iem+")");
		}else if(iem>30.0){
			System.out.print("Su composición corporal es: Obesidad ("+iem+")");
		}else{
			System.out.print("Su composición corporal es: Normal ("+iem+")");
		}
	}
}