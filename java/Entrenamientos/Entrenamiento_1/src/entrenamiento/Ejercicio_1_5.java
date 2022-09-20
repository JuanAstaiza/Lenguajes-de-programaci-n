/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entrenamiento;

import java.util.Scanner;

/**
 *
 * @author JUAN CARLOS ASTAIZA
 */
public class Ejercicio_1_5 {
    
    
    public static void main(String[] args) {
        /* 1.6. Escriba un programa, que reciba 4 números por consola, y muestre por pantalla, cuál
        es el mayor de todos. Al finalizar debe visualizar el siguiente reporte:
        Suma de los pares
        Suma de los impares    
        */
        
        Scanner lector = new Scanner(System.in);
        
        int n1=0,n2=0,n3=0,n4=0,sumP=0,sumI=0;
        
        System.out.println("Digite el PRIMER numero: ");
        n1 = lector.nextInt();
        if(n1%2==0){
            //Par
            sumP=sumP+n1;
        }else{
            sumI=sumI+n1;
        }
        System.out.println("Digite el SEGUNDO numero: ");
        n2 = lector.nextInt();
        if(n2%2==0){
            //Par
            sumP=sumP+n2;
        }else{
            sumI=sumI+n2;
        }
        System.out.println("Digite el TERCER numero: ");
        n3 = lector.nextInt();
        if(n3%2==0){
            //Par
            sumP=sumP+n3;
        }else{
            sumI=sumI+n3;
        }
        System.out.println("Digite el CUARTO número: ");
        n4 = lector.nextInt();
        if(n4%2==0){
            //Par
            sumP=sumP+n4;
        }else{
            sumI=sumI+n4;
        }
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
        
        System.out.println("La suma de los PARES es: "+sumP);
        System.out.println("La suma de los IMPARES es: "+sumI);
        
        
        

    
    
    
    }

}
