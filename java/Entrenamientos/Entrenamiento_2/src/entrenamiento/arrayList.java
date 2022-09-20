/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entrenamiento;

import java.util.ArrayList;

/**
 *
 * @author juanc
 */
// CLASE DE ARRAY LIST

public class arrayList {

    public static void main(String[] args) {
        
        System.out.println("***************  ARRAY LIST ***************");
        System.out.println("");
        
        ArrayList<String> cars = new ArrayList<String>();
        cars.add("Chevrolet"); //0
        cars.add("Mazda");     //1
        cars.add("Nissan");    //2
        cars.add("Suzuki");    //3
        System.out.println("ArrayList: "+cars);
        System.out.println("");
        System.out.println("LISTA: ");
        for (int i = 0; i < cars.size(); i++) {
            System.out.println(cars.get(i));
        }
        System.out.println("");
        System.out.println("Mostrar Posicion: "+cars.get(2));
        String old_card=cars.get(2);
        System.out.println("");
        System.out.println("MODIFICAR");
        System.out.println("");
        cars.set(2, "Nissan March");
        System.out.println(old_card+" is now "+cars.get(2));
        System.out.println(cars);
        System.out.println("");
        System.out.println("ELIMINAR DATO (Mazda):");
        cars.remove(1);
        System.out.println(cars);
        System.out.println("");
        System.out.println("CONTAR CARS: "+cars.size());
        System.out.println("");
        System.out.println("ELIMINAR DATOS");
        cars.clear();
        System.out.println(cars);
    }
}
