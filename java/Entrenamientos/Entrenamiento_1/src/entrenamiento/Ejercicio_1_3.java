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
public class Ejercicio_1_3 {
    
    
    public static void main(String[] args) {
       /* Ejercicio 1. 3  "Entretenimiento 1."
        
        1.3 Escriba un programa que muestre las tablas de multiplicar de 1 al 10, con un intervalo
        de serie de 1 a 10. (Estructura WHILE)
         */
        
    
        int numI=0,numF=0,res=0;
        boolean bnumI=false,bnumF=false;
        
        
        System.out.println("-----------------------------------");
        System.out.println("TABLAS DE MULTIPLICAR");
        System.out.println("-----------------------------------");
        System.out.println("");
        

        while(bnumI!=true){
            bnumF=false; 
            numI++;
            System.out.println("");
            System.out.println("------------------------"); 
            System.out.println("TABLA DEL "+numI);
            System.out.println("------------------------");
            System.out.println("");
            while(bnumF!=true) { 
                numF++;  
                res=numI*numF;
                System.out.println(numI+" X "+numF+" = "+ res);
                if(numF==10){                    
                  numF=0;
                  bnumF=true; 
                }
            }
            if(numI==10){
               bnumI=true;  
            }
        }
    }
}
