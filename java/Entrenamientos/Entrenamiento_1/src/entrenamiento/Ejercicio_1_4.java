package entrenamiento;


import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JUAN CARLOS ASTAIZA
 */
public class Ejercicio_1_4 {
    
    
     public static void main(String[] args) {
         /* Ejercicio 1. 4  "Entretenimiento 1."
        
       Escriba un programa que solicite el número de la tabla de multiplicar a operar y el
        límite de la serie a mostrar (El intervalo de datos a visualizar debe iniciar en 1)
        
         */

        Scanner lector = new Scanner(System.in);

        int num = 0,limF=0,res=0;

        System.out.println("TABLA DE MULTIPLICAR");
        System.out.println("-----------------------------------");
        System.out.println("");
        System.out.println("Digite el No. de tabla que desea mostrar: ");
        num = lector.nextInt();
        System.out.println("Digite el limite final: ");
        limF = lector.nextInt();
        System.out.println("");
        System.out.println("-----------------------------");
        System.out.println("TABLA DEL "+num);
        System.out.println("-----------------------------");
        
        for (int i = 1; i  <= limF; i++) {
            res=num * i;
            System.out.println(num+" x "+i+" = "+res);
        }

    }
}
