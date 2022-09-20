#include "iostream"

using namespace std;

int main()
{
	int cont=0;
	double pesoE=0,costoE=0;
    bool v=false; 
    int envio=0;
    
    	cout << "Transporte de mercancía";	
        cout << ".......................................................\n";
	
		cout << "Por favor cuantos envios desea ingresar: \n";
		cin >> envio;
		double peso[envio];
   		double costo[envio];
   		cout << "----------------------------------------------------\n";
    while(v!=true){ 
        cout << "Por favor ingrese  los datos del "<<cont+1<<" envio:\n";
		cout << "Digite por favor su peso:";
		cin >> pesoE;
		peso[cont]=pesoE;
    	if(pesoE<75){    		
			costoE=(2.5*250)/100;
		}else if(pesoE>=75 && pesoE<=500){
			costoE=250;
		}else if(pesoE>500){
			costoE=(7.5*250)/100;
		}
    	cout<<"El costo del primer envio es un valor de $: "<<costoE<<endl;
		costo[cont]=costoE;
		if(cont==(envio-1)){
			v=true;
		}
    	cont++;		
	   	cout << "***********************************************\n";	
	}
	
	//IMPRIMIR ARREGLOS
    cout <<"Los datos de los Arreglos son: \n";
	for(int i = 0; i < envio; i++){
		cout <<"Envio "<<i+1<<": -> Peso: "<<peso[i]<<" Costo: "<<costo[i]<<"\n";
    }
    

    
    
	
}
