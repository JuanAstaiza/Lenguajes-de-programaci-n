# PROGRAMA PARA CALCULAR EL PROMEDIO DE UN NUMERO DADO DE CANTIDADES
import os

print ("*******************************************************")
print ("|   PROGRAMA PARA CALCULAR EL PROMEDIO DE X NUMEROS   |")
print ("*******************************************************")
n=int(input("Cantidad de Números: "))
cantidad=n
sumaT=0
while n>0:
    num=float(input("Digite el Numero:"))
    sumaT=sumaT+num
    n=n-1
print("")
print("********************************************************")
print("La Suma total de los números Ingresados es: ",sumaT)
print("El promedio es:", sumaT/cantidad)
print("********************************************************")

