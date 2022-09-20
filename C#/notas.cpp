#include "iostream"

using namespace std;

int main()
{
	float sumatoria=0,np=0,mayor,menor;
	int contA=0,contR=0,contPE=0,contPD=0;
    float notas[10];
    cout << "Por favor ingrese la notas de los estudiantes: \n";
    for(int i = 0; i < 10; i++){
        cout << "\n******* Estudiante " << i + 1 <<"********:\n";
        cout << "Nota: ";
        cin >> notas[i];
    }
    cout<<"\n";	
    //Operaciones
    mayor=notas[0];
    menor=notas[0];
    for(int n = 0; n < 10; n++){
    	//nota promedio
		
		sumatoria=sumatoria+notas[n];
		
		//alta y baja
		if (notas[n] > mayor){
			mayor = notas[n];
		}
		if (notas[n] < menor){
			menor = notas[n];
		}
		
		
		//aprobatorias y reprobatorias
		if (notas[n] > 3){
			contA++;
		}
		if (notas[n] < 3){
			contR++;
		}
				
	}
	np=sumatoria/10;

	//debajo y encima PROMEDIO
	for(int n = 0; n < 10; n++){
		if (notas[n] > np){
			contPE++;
		}
		if (notas[n] < np){
			contPD++;
		}	
	}
	
	
	
	
    cout<<"La nota promedio es: "<<np<<endl;
    cout<<"La nota mas alta es: "<<mayor<<endl;
    cout<<"La nota mas baja es: "<<menor<<endl;
    cout<<"Numero de notas aprobatorias: "<<contA<<endl;
    cout<<"Numero de notas reprobatorias: "<<contR<<endl;
    cout<<"Numero de notas cuyo valor esta por encima del promedio: "<<contPE<<endl;
    cout<<"Numero de notas cuyo valor esta por debajo del promedio: "<<contPD<<endl;


	
}
