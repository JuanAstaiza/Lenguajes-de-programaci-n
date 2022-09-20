/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entrenamiento;

import java.util.Scanner;

/**
 *
 * @author Aula1
 */
public class Ejercicio_1_2 {
    
    
    public static void main(String[] args) {
       /* Ejercicio 1. 2  "Entretenimiento 1."
        
        1.2 Escriba un programa que muestre las tablas de multiplicar de 1 al 10, con un intervalo
        de serie de 1 a 10. (Estructura FOR)
         */
        int res=0;        
        
        System.out.println("-----------------------------------");
        System.out.println("TABLAS DE MULTIPLICAR");
        System.out.println("-----------------------------------");
        System.out.println("");
        for (int numI = 1; numI <= 10; numI++) {
               System.out.println("");
               System.out.println("------------------------"); 
               System.out.println("TABLA DEL "+numI);
               System.out.println("------------------------");
               System.out.println("");
            for (int numF = 1; numF <= 10; numF++) {
                res=numI*numF;
                System.out.println(numI+" X "+numF+" = "+ res);
            }
        }

       
       
        
    }
}
