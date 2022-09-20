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
public class Ejercicio_1_6 {
    
    
    public static void main(String[] args) {
        /*Ejercicio 1.6 "Entretenimiento 1."
        1.6  Escriba un programa que genere tire los dados N veces, y finalice ÚNICAMENTE
        cuando el PAR generado sea 1 y 1.
        */
        Scanner lector = new Scanner(System.in);
        
        int numD=0;        
        
        System.out.println("Digite el Número de veces que quiere tirar los dados: ");
        numD=lector.nextInt();
        
        for (int i = 0; i < numD; i++) {
            int dado1 = (int) (Math.random()*6+1);
            int dado2 = (int) (Math.random()*6+1);
            System.out.println("DADO 1: "+dado1);
            System.out.println("DADO 2: "+dado2);
            System.out.println("");
            if(dado1==1 && dado2==1){
               i=numD;
            }
        }
        
        
    }
    
}
