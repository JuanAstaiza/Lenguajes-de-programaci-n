import java.util.*;
public class Adivinar{
	public static void main (String[] args){
		System.out.print(":::: ADIVINAR NUMERO ::::\n");
		int cont=0;	
		int num_ale=7;
		int numero=0;
		int punt1=100;
		int punt2=75;
		int punt3=50;
		int punt4=25;
		int punt5=0;
		String linea=" - ";
		Scanner teclado = new Scanner(System.in);
		boolean b=true;
		do{
			cont++;
			System.out.print("Digite un numero:\n");
			numero = teclado.nextInt();			
			if(numero>num_ale){
				b=true;
				System.out.print("El numero debe ser menor.\n");
			}else if(numero<num_ale){
				System.out.print("El numero debe ser mayor.\n");
				b=true;
			}else if(numero==num_ale){
				b=false;
				System.out.print("Felicitaciones. Tubo "+cont +" intentos\n");
			}
			if(cont==4){
				b=false;
				if(numero==num_ale){
					System.out.print("PUNTAJE : "+punt4+" puntos");
				}else{
					System.out.print("PUNTAJE : "+punt5+" puntos");
				}
 			}
			if(b==false){
				if(cont==1){
					System.out.print("PUNTAJE : "+punt1+" puntos");
				}else if(cont==2){
					System.out.print("PUNTAJE : "+punt2+" puntos");
				}else if(cont==3){
					System.out.print("PUNTAJE : "+punt3+" puntos");				
				}
			}			
		}while(b==true);
	}
}