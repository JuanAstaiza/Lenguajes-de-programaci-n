# Escriba un programa en Python que permita recibir
# una PALABRA desde el teclado y me muestre la Palabra en forma invertida.

import os

x=[]
def procesar(x):
    f = ""
    for i in x:
        f = i + f
    print("")
    print(":::. PALABRA INVERTIDA .:::")
    print("")
    print(f)

a=input("Ingrese la palabra que desea invertir: ")
procesar(a)
