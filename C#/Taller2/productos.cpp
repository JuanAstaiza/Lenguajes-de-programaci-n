#include <iostream>
#include <cstdlib>
#include<stdio.h>
#include<string.h>

using namespace std;

struct Productos
{
    int codProducto;
    string  nombreProducto;
    string  fechaCompra;
    float ValorCompra;
    float ValorVenta;
    float Descuento;
};


int main()
{
	int contador=0;
    struct Productos listadoProductos[1000];

	int codigo;
	int datos=0,registros=0;
	int valorCompra=0,ValorVenta=0,promedioVenta=0,sumaventa=0;
	float ganancia=0,descuento=0,utilidad=0;
	string  nombre,fecha;
	printf("      MENU PRINCIPAL\n");
	printf("------------------------------\n");
    int opcion;
    int repitefecha = 0;

    bool repetir = true;
    bool repetir2 = true;
    bool incorrecta=true;
    
	int Operacionganacia(int , int );
	float OperacionUtilidad(float , float);


    do {
        cout << "\n\nMenu de Opciones" << endl;
       	printf("1. Registrar Producto\n");
	    printf("2. Listar Productos\n");
	    printf("3. Buscar Producto\n");
        cout << "0. SALIR" << endl;
        
        cout << "\nIngrese una opcion: ";
        cin >> opcion;
        
        switch (opcion) {
            case 1:
                // Lista de instrucciones de la opción 1                
                printf("      Registrar Producto\n");
				printf("------------------------------\n");
				printf("Codigo Producto:");
				cin >> codigo;
				printf("Nombre Producto:");
				cin >> nombre;
				listadoProductos[contador].codProducto=codigo;
				listadoProductos[contador].nombreProducto=nombre;
				printf("Fecha Compra:");
				cin >> listadoProductos[contador].fechaCompra;
				printf("Valor Compra:");
				cin >> listadoProductos[contador].ValorCompra;
				printf("Valor Venta:");
				cin >> listadoProductos[contador].ValorVenta;
				printf("Descuento:");
				cin >> listadoProductos[contador].Descuento;
				int opcion2;
				do{
					printf("Desea Ingresar otro Registro: \n");
					printf("1. SI\n");
					printf("2. NO\n");
				    cout << "\nIngrese una opcion: ";
       				cin >> opcion2;
       				switch (opcion2) {
       					case 1:
       						registros++;
       						if(registros<=20){
       							contador++;
								listadoProductos[contador].codProducto=codigo;
								listadoProductos[contador].nombreProducto=nombre;
								do{								
									printf("\nFecha Compra:");
									cin >> fecha;
									for(int i=0; i<contador; i++)
									{								    	
										if(listadoProductos[i].codProducto==codigo){
										    if(listadoProductos[i].fechaCompra==fecha){
										    	repitefecha++;	
											}
										}
								    }
										if(repitefecha>0){
											incorrecta=true;
											cout <<"\nFecha se repite :"<<repitefecha<<" veces.";
									    	cout <<"\nFecha Compra REPETIDA. Ingrese nuevamente.";
											repitefecha=0;
										}else{
											repitefecha=0;
											incorrecta=false;
											listadoProductos[contador].fechaCompra=fecha;
											printf("Valor Compra:");
											cin >> listadoProductos[contador].ValorCompra;
											printf("Valor Venta:");
											cin >> listadoProductos[contador].ValorVenta;
											printf("Descuento:");
											cin >> listadoProductos[contador].Descuento;
											cout<<"\n";
										}							
								}while(incorrecta);
							}else{
								incorrecta=true;
								cout <<"\nSE PERMITE MAXIMO 20 REGISTROS PARA ESTE PRODUCTO";
								registros=0;
							}       						
       						break;
       					case 2:
       						registros=0;
       						repetir2 = false;
       						break;
       				}		    	
			    	
				}while(repetir2);
				contador++;
                break;
                
            case 2:
                // Lista de instrucciones de la opción 2                
                printf("      Listar Productos\n");
				printf("------------------------------\n");
			    printf("||CodigoProducto  || NombreProducto  ||  Fecha Compra  ||  Valor Compra || Valor Venta ||  Descuento  ||   Utilidad\n");
				for(int i=0; i<contador; i++)
			   {
					ganancia=listadoProductos[i].ValorVenta-listadoProductos[i].ValorCompra;
		    		descuento=ganancia-listadoProductos[i].Descuento;
		    		utilidad=(descuento*100)/listadoProductos[i].ValorCompra;
					cout <<"|| "<<listadoProductos[i].codProducto<<"|| "<<listadoProductos[i].nombreProducto<<"|| "<<listadoProductos[i].fechaCompra
					<<"  ||  "<<listadoProductos[i].ValorCompra<<"  ||  "<<listadoProductos[i].ValorVenta<<"  ||  "<<listadoProductos[i].Descuento<<"  ||  "<<utilidad<<"%\n";
		       }
               break;
                
            case 3:
                // Lista de instrucciones de la opción 3                
                printf("      Buscar Producto\n");
				printf("------------------------------\n");
				printf("Codigo Producto:");
				cin >> codigo;
				for(int i=0; i<contador; i++)
				{								    	
					if(listadoProductos[i].codProducto==codigo){
					   datos++;
					   sumaventa=sumaventa+listadoProductos[i].ValorVenta;
					}
			    }
			    if(datos>0){
			    	//Si hay registros
			    	cout <<"Se han encontrado "<<datos<<" registros......\n";
			    	printf("||  Fecha Compra  ||  Valor Compra || Valor Venta ||  Descuento  ||   Utilidad\n");
					for(int i=0; i<contador; i++)
				    {
				    	if(listadoProductos[i].codProducto==codigo){
				    		valorCompra=listadoProductos[i].ValorCompra;
				    		ValorVenta=listadoProductos[i].ValorVenta;
				    		ganancia=Operacionganacia(ValorVenta,valorCompra);
				    		descuento=ganancia-listadoProductos[i].Descuento;	
							valorCompra=listadoProductos[i].ValorCompra;			    		
        					utilidad= OperacionUtilidad(descuento,valorCompra);
				    		promedioVenta=sumaventa/datos;
							cout <<"|| "<<listadoProductos[i].fechaCompra
							<<"  ||  "<<listadoProductos[i].ValorCompra<<"  ||  "<<listadoProductos[i].ValorVenta<<"  ||  "<<listadoProductos[i].Descuento<<"  ||  "<<utilidad<<"%\n";
						}
				    }
				  	cout <<"\nPromedio de Venta: "<<promedioVenta;  
				  	datos=0;
				  	sumaventa=0;
				}else{
					cout <<"NO HAY REGISTROS.\n";
				}
                break;                
           
            case 0:
            	repetir = false;
            	break;
        }        
    } while (repetir);	 
    return 0;
}
	int Operacionganacia(int venta, int compra){
	    int ganancia;
		ganancia=venta-compra;
	    return ganancia;
	}

	float OperacionUtilidad(float descuento, float valorCompra){
	    float utilidad;
        utilidad= (descuento*100)/valorCompra;
	    return utilidad;
	}


