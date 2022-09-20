/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Corte_1;

/**
 *
 * @author juanc
 */
public class Principal {
   // CLASE QUE PERMITE EJECUTAR BARRA DE PROGRESO ( PROGRESS BAR)
   // Nota: Se debe ejecutar este archivo Y Al generar .jar colocar Main a Principal.java
       public static void main(String[] args) {
            PrincipalCadena1 principal = new PrincipalCadena1();
            principal.setVisible(true);
            Cadenas1 cadena1 = new Cadenas1();
           try {
                for (int i = 0; i <= 100; i++) {
                   Thread.sleep(40);
                   principal.loadingNum.setText(Integer.toString(i)+"%");
                   principal.loadingBar.setValue(i);
                   if(i==100){
                       principal.setVisible(false);
                       cadena1.setVisible(true);
                   }
                }
           } catch (Exception e) {
           }
           
       }
}
