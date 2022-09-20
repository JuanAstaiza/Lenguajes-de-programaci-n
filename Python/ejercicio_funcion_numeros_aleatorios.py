
#   PROGRAMA QUE PERMIE INGRESAR 4 VALORES, LUEGO PROCESARLOS DENTRO
#   DE UNA FUNCION Y AL FINAL MOSTRAR UN RESULTADO
#   ENTEROS Y DECIMALES SEGUN LA CANTIDAD

import os
from random import randint, uniform, random


def generar(c, li, lf, e_c):
    cont=1
    while cont <= c:
        if e_c=="Z":
            z=randint(li,lf)
            print(cont,")",z)
        elif e_c=="R":
            r= uniform(li,lf)
            print(cont,")",r)
        cont+=1

print("")
print(":::::. PROGRAMA PARA MOSTRAR ENTEROS Y DECIMALES SEGUN LA CANTIDAD .:::::")
print("")
cantidad = int(input("Digite la cantidad números aleatorios a generar: "))

limite_inicial=0
limite_final=0
cont=1
while limite_inicial>=limite_final:
    if cont >= 2:
        print("VALORES INCORRECTOS.")
        print("-El valor inicial no debe ser mayor al valor final.")
        print("-Valor inicial no debe ser igual que el Valor final.")
        print("Intente nuevamente.")
        print("")
    limite_inicial = int(input("Digite el número inicial: "))
    limite_final = int(input("Digite el número final: "))
    cont+=1

resultado=""
cont=1
while (resultado != "Z") and (resultado != "R"):
    if cont >= 2:
        print("LETRA INCORRECTA.")
        print("La letra debe ser Z o R.")
        print("Intente nuevamente.")
        print("")
    resultado = input("Enteros (Z) o Reales (R) : ")
    cont+=1
print("")
print("::::. RESULTADO .::::")
print("")
generar(cantidad, limite_inicial, limite_final, resultado)
