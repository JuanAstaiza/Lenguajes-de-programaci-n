#Escriba un programa en Python que reciba un numero de N y
# muestre por pantalla cada dígito por separado.


import os


def proceso(n):
    print("")
    print(":::. NUMERO POR SEPARADO .:::")
    print("")
    for i in n:
        print(i)

numero = input("Introduce el número: ")
proceso(numero)

