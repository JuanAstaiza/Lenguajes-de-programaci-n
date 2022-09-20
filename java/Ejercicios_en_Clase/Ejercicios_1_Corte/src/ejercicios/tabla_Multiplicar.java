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
public class tabla_Multiplicar {

    public static void main(String[] args) {
        //PROGRAMA QUE PERMITE ESCOGER LA TABLA QUE DESEA MOSTRAR Y ENTRE UN RANGO ESPECIFICO
        Scanner lector = new Scanner(System.in);

        int num = 0,limI=0,limF=0,res=0;
        boolean b=false;

        System.out.println("TABLA DE MULTIPLICAR");
        System.out.println("-----------------------------------");
        System.out.println("");
        System.out.println("Digite el No. de tabla que desea mostrar: ");
        num = lector.nextInt();
        System.out.println("");
        System.out.println("Nota: El limite inicial no debe ser mayor que el limite final.");
        System.out.println("");
        while (b!=true) {            
            System.out.println("Digite el limite inicial: ");
            limI = lector.nextInt();
            System.out.println("Digite el limite final: ");
            limF = lector.nextInt();
            if (limI>limF) {
                System.out.println("");
                System.out.println("ERROR,datos incorrectos.");
                System.out.println("");
            }else{
                b=true;
            }
        }         
        System.out.println("-----------------------------");
        System.out.println("TABLA DEL "+num);
        System.out.println("-----------------------------");
        
        for (int i = limI; i  <= limF; i++) {
            res=num * i;
            System.out.println(num+" x "+i+" = "+res);
        }

    }
}
