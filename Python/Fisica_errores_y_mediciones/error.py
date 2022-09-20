import os
import math
print ("*******************************************************")
print ("|   PROGRAMA PARA CALCULAR EL ERROR CUADRATICO        |")
print ("*******************************************************")
numeros_registrados = {}
resultado_error_C_parte_1={}
n=int(input("Cantidad de Números: "))
cantidad=n
sumaT=0
cont=0
error_C_parte_1=0
error_C_parte_2=0
error_C_parte_3=0
error_C=0
raiz_error_C=0
while n>0:
    num=float(input("Digite el Numero:"))
    numeros_registrados[cont] = num
    sumaT=sumaT+num
    n=n-1
    cont=cont+1
promedio=sumaT/cantidad
# CALCULAR ERROR CUADRATICO
print(numeros_registrados)

# Formula = (Xi-promedio)^2
for i in range(0, cantidad):
    error_C_parte_1=(numeros_registrados[i]-promedio)**2
    resultado_error_C_parte_1[i] = error_C_parte_1
print(resultado_error_C_parte_1)
#Formula =Sumatoria (Xi-promedio)^2
for i in range(0, cantidad):
    error_C_parte_2=float(error_C_parte_2+ resultado_error_C_parte_1[i])

#Formula = (N*(N-1))
error_C_parte_3 = int(cantidad*(cantidad-1))
#Formula =  1*(Sumatoria (Xi-promedio)^2)/(N-(N-1)
error_C = float((1*error_C_parte_2)/error_C_parte_3)
raiz_error_C=float(math.sqrt(error_C))
print("")
print("********************************************************")
print("La Suma total de los números Ingresados es: ",sumaT)
print("El promedio es:", promedio)
print("El ERROR CUADRATICO ES: ",promedio,"+-",raiz_error_C)
print("********************************************************")
