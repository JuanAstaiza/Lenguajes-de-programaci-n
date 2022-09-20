#include "iostream"

using namespace std;
float sum(float , float );
float resta(float, float);
float multiplicacion(float , float );
float division(float a, float b);

int main()
{
    bool v=false; 
    int cantA=-1,cantB=-1,cont=0;
    float numero=0;
    float A[5],B[5],suma[5],res[5],mult[5],div[5];
    int mayor=0, menor=0;
    
        
    while(v!=true){ 
        cout << "Por favor ingrese el numero "<<cont+1<<" :\n";
		cin >> numero;
		if(cont>=0 && cont<=4){			
			cantA++;	
            A[cantA]=numero;
		}else if(cont>=5 && cont<=9){
			cantB++;
		    B[cantB]=numero;
		    if(cont==9){
			    v=true;
			}			
		}		
		
    	cont++;
	   	cout << "***********************************************\n";	
	}
	
		   	cout << "*********** PROCESO *************\n";	

    cout << "A: ";				
	for(int i = 0; i < 5; i++){			
        cout << A[i]<<" , ";				
    }
    
	cout << "\n";	

    cout << "B: ";			
	for(int i = 0; i < 5; i++){			
        cout <<B[i]<<" , ";				
    }
    cout << "\n";	
    
    cout << "***********************************************\n";	
	for(int i = 0; i < 5; i++){
		float numero1=A[i];
		float numero2=B[i];	
		if(numero1==numero2){
			suma[i]=0;
		}else{
			suma[i]=sum(numero1,numero2);					
		}	
    }
    
    cout << "SUMA: ";
	for(int i = 0; i < 5; i++){
        cout << suma[i]<<" , ";				
    }
            cout << "\n";	
 		mayor = menor = suma[0];
	
	    for (int i = 1; i < sizeof(suma) / sizeof(suma[0]); ++i){
			if (suma[i] > mayor) mayor = suma[i];
			if (suma[i] < menor) menor = suma[i];
		}
    	
		printf("El mayor es %d y el menor es %d\n", mayor, menor);
		
		
        cout << "***********************************************\n";	

    for(int i = 0; i < 5; i++){
    	float numero1=A[i];
		float numero2=B[i];
		if(numero1==numero2){
			res[i]=0;
		}else{
			res[i]=resta(numero1,numero2);			
		}
    }
    	
    cout << "RESTA: ";
	for(int i = 0; i < 5; i++){
        cout << res[i]<<" , ";				
    }
         cout << "\n";	

		mayor = menor = res[0];
	
	    for (int i = 1; i < sizeof(res) / sizeof(res[0]); ++i){
			if (res[i] > mayor) mayor = res[i];
			if (res[i] < menor) menor = res[i];
		}
    	
		printf("El mayor es %d y el menor es %d\n", mayor, menor);

 
    
    
    
        cout << "***********************************************\n";	

	for(int i = 0; i < 5; i++){
		float numero1=A[i];
		float numero2=B[i];
		if(numero1==numero2){
			mult[i]=0;
		}else{
	     	mult[i]=multiplicacion(numero1,numero2);			
		}
    }
   
    
    cout << "MULTIPLICACION: ";
	for(int i = 0; i < 5; i++){
        cout << mult[i]<<" , ";				
    }
                cout << "\n";	


    	mayor = menor = mult[0];
	
	    for (int i = 1; i < sizeof(mult) / sizeof(mult[0]); ++i){
			if (mult[i] > mayor) mayor = mult[i];
			if (mult[i] < menor) menor = mult[i];
		}
    	
		printf("El mayor es %d y el menor es %d\n", mayor, menor);
    
    cout << "***********************************************\n";	
	for(int i = 0; i < 5; i++){
		float numero1=A[i];
		float numero2=B[i];
			if(numero1==numero2){
			div[i]=0;
		}else{
			div[i]=division(numero1,numero2);		
		}
    }
    
    cout << "DIVISION: ";
	for(int i = 0; i < 5; i++){
        cout << div[i]<<" , ";				
    }
	            cout << "\n";	


		mayor = menor = div[0];
	
	    for (int i = 1; i < sizeof(div) / sizeof(div[0]); ++i){
			if (div[i] > mayor) mayor = div[i];
			if (div[i] < menor) menor = div[i];
		}
    	
		printf("El mayor es %d y el menor es %d\n", mayor, menor);
    
    
}




	float sum(float a, float b){
         float c;
         c = a + b;
         return c;
	}
	
	float resta(float a, float b){
         float c;
         c = a - b;
         return c;
	}
	
	float multiplicacion(float a, float b){
         float c;
         c = a * b;
         return c;
	}
	
	float division(float a, float b){
         float c;
         c = a / b;
         return c;
	}
	
	
