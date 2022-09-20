/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicios;

import java.util.Scanner;

/**
 *
 * @author Aula1
 */
public class Calc2 {

    public static void main(String[] args) {
        // PROGRAMA PARA SOLICITAR DOS NUMEROS POR CONSOLA Y MOSTRAR MENU (OPERACIONES ARISMETICAS) Y LUEGO MOSTRAR RESULTADO   
        Scanner sc = new Scanner(System.in);
        
        int n1=0,n2=0;
        String op;
        System.out.println("OPERACIONES ARISMETICAS");
        System.out.println("_______________________");
        System.out.println("");
        System.out.println("Escriba el primer numero: ");
        n1=sc.nextInt();
        System.out.println("Escriba el segundo numero: ");
        n2=sc.nextInt();
        System.out.println("_____________________________________");  
        System.out.println("");
        System.out.println(" MENU PRINCIPAL ");
        System.out.println("(1) SUMA");
        System.out.println("(2) RESTA");
        System.out.println("(3) MULTIPLICACION");
        System.out.println("(4) DIVISION");
        System.out.println("Escoja una opcion: ");
        System.out.println("");
        op=sc.next();
        switch(op) {
            case "1":
                System.out.println("La suma es: "+ (n1+n2) );
                break;
            case "2":
                 System.out.println("La resta es: "+ (n1 - n2) );
                 break;
            case "3":
                 System.out.println("La multiplicacion es: "+(n1*n2) );
                 break;
            case "4":
                 System.out.println("La division es: "+(n1 / n2) );
                 break;
            default:
                 System.out.println("Opcion Incorrecta." );
                 break;
         }
        
    }
}
