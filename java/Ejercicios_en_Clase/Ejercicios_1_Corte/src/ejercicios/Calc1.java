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
public class Calc1 {
    
    public static void main(String[] args) {
        // PROGRAMA PARA SUMAR DOS NUMEROS DADOS POR EL USUARIO
        
        Scanner sc = new Scanner(System.in);
        
        int n1=0,n2=0,sum=0,res=0,mult=0,div=0;
        System.out.println("SUMA DE DOS NUMEROS");
        System.out.println("_______________________");
        System.out.println("");
        System.out.println("Escriba el primer numero: ");
        n1=sc.nextInt();
        System.out.println("Escriba el segundo numero: ");
        n2=sc.nextInt();
        
        // Operaciones
        sum=n1+n2;
        res=n1-n2;
        mult=n1*n2;
        div=n1/n2;
        
        System.out.println("_________________");
        System.out.println(" RESULTADO ");
        System.out.println("_________________");
        System.out.println("");
        System.out.println("La suma es: "+sum);
        System.out.println("La resta es: "+res);
        System.out.println("La multiplicacion es: "+mult);
        System.out.println("La division es: "+div);
 
    }
}
