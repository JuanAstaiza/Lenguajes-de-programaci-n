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
public class Calc4 {
    public static void main(String[] args){
        //Programa estatico de las Operaciones Arisméticas
        int n1=5,n2=6,op=2,res=0;
        if(op==1){
            res=n1+n2;
        }else if(op==2){
            res=n1-n2;                    
        }else if(op==3){
            res=n1*n2;
        }else if(op==4){
            res=n1/n2;
        }else{
            System.out.println("Incorrecta");
        }
        System.out.println("La respuesta es: "+res);
    }
    
}
