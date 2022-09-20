

#include <iostream>
using namespace std;

int main()
{
    int numeroI,numeroF,n;

	cout << "Introduzca la Numero Incial:";
	cin >>numeroI;
	cout << "Introduzca el Numero Final:";   
	cin >> numeroF;
	cout<<"\n";				
	
        for (int j = numeroI ; j <= numeroF ; j++ ){
			cout<<"\n";	
            for (int i = 10 ; i <= 20 ; i++ ) {
            	cout<<j<<" * "<<i<<" = "<<j*i<<endl; 
			}
		}
			 
    return 0;
}
