/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evaluaciones;

import java.util.Scanner;

/**
 *
 * @author JUAN CARLOS ASTAIZA
 */
public class test_PrimerCorte {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String nombreCompleto,letra,nuevoNombre;
        int posicion, contador = 0;
        boolean b=true;
        Scanner keyboard = new Scanner(System.in);
        System.out.println("****************************");
        System.out.println("      TEST PRIMER CORTE     ");
        System.out.println("****************************");
        System.out.println("");
        System.out.println("Nota: Debe digitar un solo caracter en el campo de la letra.");
        System.out.println("");
        System.out.println("Ingrese sus Nombres: ");
        nombreCompleto=keyboard.nextLine();
        do{    
            System.out.println("Ingrese una letra: ");
            letra=keyboard.next();
            if(letra.length()==1){
                b=true;
            }else{
                b=false;
                System.out.println("________________________________________");
                System.out.println("ERROR: Digito más de 2 caracteres.");
                System.out.println("________________________________________");
            }
        }while(b!=true);
        posicion = nombreCompleto.indexOf(letra);
        while (posicion != -1) {
            contador++;     
            posicion = nombreCompleto.indexOf(letra, posicion + 1);
           
        }
        System.out.println("");
        System.out.println("****************************");
        System.out.println("        RESULTADOS          ");
        System.out.println("****************************");
        System.out.println("");
        if(contador==0){
            System.out.println("No se encontraron resultados.");
        }else{
            System.out.println("Total repeticiones de letra en el nombre: "+contador);
            nuevoNombre=nombreCompleto.replaceAll(letra, "XYZ");
            System.out.println("Nuevo nombre: "+nuevoNombre);
        }      
    } 
}

