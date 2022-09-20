# CHALLENGE 2:
# PROGRAMA QUE TIENE CAPACIDAD DE TRES JUGADORES Y PERMITE LANZAR DADOS (NUMEROS ALEATORIOS) CON EL FIN DE QUE LOS JUGADORES
# LLEGUEN A LA META DE 101 PUNTOS


import os
import time
from random import randint, uniform, random

#FUNCION QUE PERMITE VALIDAR  Y RETORNAR EL VALOR DE LOS PARES DE DADOS
def dados_pares(d1,d2):
    if d1 == 1 and d2 == 1:
        pares_c = 1
    elif d1 == d2:
        pares_c = 1
    else:
        pares_c = 0
    return pares_c

#FUNCION QUE PERMITE VALIDAR  Y RETORNAR EL VALOR DE LA SUMA DE DADOS
def dados_acumulador_1_1(d1,d2):
    if d1 == 1 and d2 == 1:
        a_d = 21
    else:
        a_d = d1 + d2
    return a_d


def comenzar():
    print("")
    print(":::. COMENZAR EL JUEGO .:::")
    print("")
    booleano='NO'
    acumulador1 = 0
    acumulador2 = 0
    acumulador3 = 0
    pares_acumulados1 = 0
    pares_acumulados3 = 0
    pares_acumulados2 = 0
    cont = 1
    intentos=1
    while (booleano!='SI'):
        print("________________________________________________")
        print("INTENTO",intentos)
        print("")
        for i in range(1, 4):
            if cont >= 4:
                cont = 1
                pares_acumulados1 = 0
                pares_acumulados3 = 0
                pares_acumulados2 = 0
            print("Jugador",i,":")
            input("Por favor presione ENTER para lanzar DADO... ")
            dado1 = randint(1, 6)
            dado2 = randint(1, 6)
            print("DADO 1: ",dado1)
            print("DADO 2: ",dado2)
            if i==1:
                pares_consecutivos=dados_pares(dado1, dado2)
                acumulador_dados=dados_acumulador_1_1(dado1,dado2)

                pares_acumulados1 += pares_consecutivos
                acumulador1+=acumulador_dados
            elif i==2:
                pares_consecutivos = dados_pares(dado1, dado2)
                acumulador_dados = dados_acumulador_1_1(dado1, dado2)

                pares_acumulados2 += pares_consecutivos
                acumulador2+=acumulador_dados

            elif i==3:
                pares_consecutivos = dados_pares(dado1, dado2)
                acumulador_dados = dados_acumulador_1_1(dado1, dado2)

                pares_acumulados3 += pares_consecutivos
                acumulador3+=acumulador_dados
        cont += 1
        intentos += 1

        if acumulador1 > 100 or pares_acumulados1==3:
            booleano = "SI"
            print("_____________________________")
            print("El Ganador es el JUGADOR 1")
            print("_____________________________")
        elif acumulador2 > 100 or pares_acumulados2==3:
            booleano = "SI"
            print("_____________________________")
            print("El Ganador es el JUGADOR 2")
            print("_____________________________")
        elif acumulador3 > 100 or pares_acumulados3==3:
             booleano = "SI"
             print("_____________________________")
             print("El Ganador es el JUGADOR 3")
             print("_____________________________")

        print("")
        print("::::. RESULTADO .::::")
        print("Número de Intentos:",intentos)
        print("JUGADOR 1: ","PUNTAJE ACUMULADO: ", acumulador1,"PARES ACUMULADOS: ",pares_acumulados1)
        print("JUGADOR 2: ", "PUNTAJE ACUMULADO: ", acumulador2, "PARES ACUMULADOS: ", pares_acumulados2)
        print("JUGADOR 3: ", "PUNTAJE ACUMULADO: ", acumulador3, "PARES ACUMULADOS: ", pares_acumulados3)

print ("")
print (":::::. JUEGO DE DADOS .:::::")
print ("")
dato=""
while (dato!='2'):
    print (":::. MENU PRINCIPAL .:::")
    print ("")
    print ("(1) Comenzar el juego.")
    print ("(2) Salir")
    dato = input("Escoja una opcion: ")
    if dato=='1':
        comenzar()
    elif dato=='3':
         print("Usted ha salido del sistema. GRACIAS")
    else:
        print("Opción Incorrecta. Intente Nuevamente.")



