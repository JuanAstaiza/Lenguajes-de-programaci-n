/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicios;

/**
 *
 * @author Aula1
 */
public class Calc5 {
    public static void main(String[] args){
        //Programa para imprimir numeros del 1 al 10
        
        int i=0,pares=0,impares=0;
        System.out.println("Los numeros del 1 al 30 son: ");
        
        for (i = 1; i <= 30; i++) {
            System.out.println(i);
            if ((i%2)==0) {
                pares++;
            }else{
                impares++;
            }
        }
        System.out.println("Total pares: "+pares);
        System.out.println("Total impares: "+impares);
    }
            
}
