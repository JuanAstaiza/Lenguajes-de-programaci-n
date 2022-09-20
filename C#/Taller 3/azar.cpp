// Plantilla de un Menú de Opciones

#include <iostream>
#include <cstdlib>
#include "math.h"
#include "conio.h"

using namespace std;
 float obtener_promedio(int,int []);
 float obtener_desviacion(int,int []);
 float mediana(int,int []);
 float menor(int,int []);
 float mayor(int,int []);
 float acumulador_total(int,int []);
 
int main()
{
	const int tamano =50;
    int datos[tamano];
    int opcion;
    bool repetir = true;
    
    float promedio=0;
    float valor_mediana=0;
    float valor_menor=0;
    float valor_mayor=0;
    float acumu=0;

    float desviacion_estandar=0;
    
    do {
        system("cls");
        
        // Texto del menú que se verá cada vez
        cout << "\nMenu de Opciones\n" << endl;
        cout << "----------------------\n"<< endl;
        cout << "1. Generar numeros alazar." << endl;
        cout << "2. SALIR" << endl;
        
        cout << "\nIngrese una opcion: ";
        cin >> opcion;
        
        switch (opcion) {
            case 1:
                // Lista de instrucciones de la opción 1      
				cout << "----------------------\n"<< endl;          
            	cout << "NUMEROS AZAR\n";
               	cout << "----------------------\n"<< endl;    
    			for(int i=0;i<tamano;i++)
				 	datos[i] = 1+rand()%501; 	
					 
				for(int i=0; i<tamano;i++)
				  cout<<datos[i]<<" ";
			
				desviacion_estandar=obtener_desviacion(tamano,datos);
				cout << "\nA. Desviacion estandar es: "<<desviacion_estandar<<"\n"<< endl;   

	            valor_mediana = mediana(tamano,datos);
	            cout << "MEDIANA:\n"; 
	            for(int i=0; i<tamano;i++)
				cout<<i+1<<".) "<<datos[i]<<" ";
				cout << "\nB. Mediana es: "<<valor_mediana<< endl;  
			    
			    valor_mayor = mayor(tamano,datos);
			    cout << "\nC.MAYOR es: "<<valor_mayor<< endl; 
				 
				valor_menor = menor(tamano,datos);
			    cout << "D. MENOR es: "<<valor_menor<< endl;    

	
				promedio = obtener_promedio(tamano,datos);
			    cout << "E. El promedio es: "<<promedio<< endl;    
				
				acumu = acumulador_total(tamano,datos);
			    cout << "F. El acumulado total: "<<acumu<< endl;  
	
                system("pause>nul"); // Pausa
                break;      
            case 2:
            	repetir = false;
            	break;
        }        
    } while (repetir);
	 
    return 0;
}

float obtener_promedio(int cantidad, int datos[]){
  float suma = 0;
  for (int i = 0; i < cantidad; i++) {
    suma += datos[i];
  }
  return suma / cantidad;
}


float obtener_desviacion(int cantidad, int datos[]){
  float varianza = 0;
  int n = cantidad;
  float promedio = obtener_promedio(n, datos);
  float varianza2 = 0;
  for (size_t i = 0; i < n; i++) {
    varianza += pow((datos[i] - promedio), 2.0);
  }
  varianza2= varianza / (n -1);
  
  return sqrt(varianza2);
}

float mediana(int cantidad, int datos[]){
  int aux=0;
  for(int i = 0; i < cantidad; i++){
    for(int j = 0; j < cantidad; j++){
        if(datos[j] > datos[j + 1]){
            aux = datos[j];
            datos[j] = datos[j + 1];
            datos[j + 1] = aux;
        }
    }
  }  
  return datos[24];
}

float mayor(int cantidad, int datos[]){
  int mayor;
	mayor = datos[0]; 
	
	for (int i=0; i<cantidad; i++){
	    if (datos[i]> mayor){
	   		mayor=datos[i];
	    }
	}
  return mayor;
}

float menor(int cantidad, int datos[]){
  int menor;
	menor = datos[0];
	
	for (int i=0; i<cantidad; i++){
	    if (datos[i]< menor){
	    	menor=datos[i];
	    }
	}
  return menor;
}

float acumulador_total (int cantidad, int datos[]){
  float acumulador = 0;
  for (int i = 0; i < cantidad; i++) {
    acumulador =acumulador+ datos[i];
  }
  return acumulador;
}
