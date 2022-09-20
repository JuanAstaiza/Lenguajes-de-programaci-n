#include <iostream>
 
using namespace std;
 
int main() {
  int i,j,x=1;
  int M[5][5],N[5][5],C[5][5];
 
  for (i=0; i<5; i++) {
    for (j=0; j<5; j++) {
      M[i][j] = x;
      x++;
    }
  }
  cout << "Primera matriz llena" << endl;
 
  //llenar matriz N
  cout << "Ingrese los datos de la 2da matriz" << endl;
  for (i=0; i<5; i++)
    for (j=0; j<5; j++)
      cin >> N[i][j];
 
  for (i=0; i<5; i++)
    for (j=0; j<5; j++)
      if (M[i][j] == N[i][j])
        C[i][j] = M[i][j] * N [i][j];
 
  //mostrar
  cout << "\nPrimera matriz" << endl;
  for (i=0; i<5; i++) {
    for (j=0; j<5; j++)
      cout << M[i][j] << " ";
 
    cout << endl;
  }
 
  cout << "\nSegunda matriz" << endl;
  for (i=0; i<5; i++) {
    for (j=0; j<5; j++)
      cout << N[i][j] << " ";
 
    cout << endl;
  }
 
  cout << "\nMatriz resultante" << endl;
  for (i=0; i<5; i++) {
    for (j=0; j<5; j++)
      cout << C[i][j] << " ";
 
    cout << endl;
  }
 
  return 0;
}
