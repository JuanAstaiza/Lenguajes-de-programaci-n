/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entrenamiento;

import java.util.Scanner;

/**
 *
 * @author Estudiantes
 */
public class Ejercicio_1_1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        /*Ejercicio 1.1 y 1.2  "Entretenimiento 1."
        1.1 Escriba un programa, que reciba 4 números por consola, y muestre por pantalla, cuál
        es el mayor de todos. (Estructura IF)
        
        1.2 Valide el ejercicio 1.1., de manera que, si los 4 números son iguales, muestre por
        pantalla un mensaje que indique su igualdad (SÍ Y SÓLO SÍ los 4 son iguales).
        (Estructura IF)
        */

        
        Scanner lector = new Scanner(System.in);
        
        int n1=0,n2=0,n3=0,n4=0;
        
        System.out.println("-------------------------------------------------------------");
        System.out.println("PROGRAMA PARA CALCULAR EL MAYOR DE 4 NUMEROS Y SU IGUALDAD");
        System.out.println("-------------------------------------------------------------");
        
        System.out.println("Digite el PRIMER numero: ");
        n1 = lector.nextInt();
        System.out.println("Digite el SEGUNDO numero: ");
        n2 = lector.nextInt();
        System.out.println("Digite el TERCER numero: ");
        n3 = lector.nextInt();
        System.out.println("Digite el CUARTO número: ");
        n4 = lector.nextInt();
        
        System.out.println("---------------------------");
        System.out.println("RESULTADO:");
        System.out.println("---------------------------");
        System.out.println("");
        
        //Número 1
        if (n1>n2 && n1>n3 && n1>n4) {
            System.out.println("El primer número ("+n1+") es el mayor.");
        }else if (n1>n2 && n1==n3 && n1==n4) {
           System.out.println("El primer número ("+n1+") es el mayor.");
        }else if (n1==n2 && n1>n3 && n1==n4) {
          System.out.println("El primer número ("+n1+") es el mayor.");
        }else if (n1==n2 && n1==n3 && n1>n4) {
          System.out.println("El primer número ("+n1+") es el mayor.");
        }else if (n2>n1 && n2>n3 && n2>n4) {    //Número 2
            System.out.println("El segundo número ("+n2+") es el mayor.");
        }else if (n2>n1 && n2==n3 && n2==n4) {
            System.out.println("El segundo número ("+n2+") es el mayor.");
        }else if (n2==n1 && n2>n3 && n2==n4) {
            System.out.println("El segundo número ("+n2+") es el mayor.");
        }else if (n2==n1 && n2==n3 && n2>n4) {
            System.out.println("El segundo número ("+n2+") es el mayor.");
        }else if (n3>n1 && n3>n2 && n3>n4) {  //Número 3
            System.out.println("El tercer número ("+n3+") es el mayor.");
        }else if (n3>n1 && n3==n2 && n3==n4) {
            System.out.println("El tercer número ("+n3+") es el mayor.");
        }else if (n3==n1 && n3>n2 && n3==n4) {
            System.out.println("El tercer número ("+n3+") es el mayor.");
        }else if (n3==n1 && n3==n2 && n3>n4) {
            System.out.println("El tercer número ("+n3+") es el mayor.");
        }else if (n4>n1 && n4>n2 && n4>n3) { //Número 4
            System.out.println("El cuarto número ("+n4+") es el mayor.");
        }else if (n4>n1 && n4==n2 && n4==n4) {
            System.out.println("El cuarto número ("+n4+") es el mayor.");
        }else if (n4==n1 && n4>n2 && n4==n4) {
            System.out.println("El cuarto número ("+n4+") es el mayor.");
        }else if (n4==n1 && n4==n2 && n4>n4) {
            System.out.println("El cuarto número ("+n4+") es el mayor.");
        }else if(n1==n2 && n1==n3 && n1==n4){ //validar si son iguales.
           System.out.println("Todos los numeros son iguales.");   
        }
        
        

    }

}
