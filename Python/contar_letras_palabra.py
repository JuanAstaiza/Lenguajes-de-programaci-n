#Escriba un programa en Python que permita recibir una PALABRA desde el teclado
# y me muestre un informe de cuantas veces se repite (en la palabra) cada letra.


import os


# isalpha() :
# La isalpha () devuelve:
# Verdadero si todos los caracteres de la cadena son alfabetos
# (pueden estar en minúsculas y en mayúsculas).
# Falso si al menos un carácter no es alfabeto.


def proceso(x):
    diccionario = {}
    letras = {}

    cont = 0
    for letra in x:
        if (letra.isalpha()):
            if letra in diccionario:
                diccionario[letra] = diccionario[letra] + 1
                letras[cont] = letra
            else:
                diccionario[letra] = 1
                letras[cont] = letra
                cont += 1

    print("")
    print(letras) #Array Letras de la palabra
    print(diccionario) # Array cantidad de repeticiones de cada letra
    print("")

    print("")
    print(":::. INFORME .:::")
    print("")

    for i in range(0, cont):
        print("La letra", letras[i], "se repite:", diccionario[letras[i]])


palabra = input("Introduce una palabra o palabras: ")
proceso(palabra)






