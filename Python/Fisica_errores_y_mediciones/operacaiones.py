import os
import math
def operaciones(x):
    if x == 1:
        print ("")
        print ("error cuadratico N.1")
        n1 = float(input("escriba el promedio en decimales: "))
        n2 = float(input("escriba el error en decimales: "))
        print ("")
        print ("error cuadratico N.2")
        n3 = float(input("escriba el promedio en decimales: "))
        n4 = float(input("escriba el error en decimales: "))
        print("")
        nn1 = n1 + n3
        nx = n2**2 + n4**2
        nn2 = math.sqrt(nx)
        print("")
        print("el resultado de la suma es: ","(",nn1," +- ",nn2,")")
    elif x == 2:
        print ("")
        print ("error cuadratico N.1")
        n1 = float(input("escriba el promedio en decimales: "))
        n2 = float(input("escriba el error en decimales: "))
        print ("")
        print ("error cuadratico N.2")
        n3 = float(input("escriba el promedio en decimales: "))
        n4 = float(input("escriba el error en decimales: "))
        print("")
        nn1 = n1 - n3
        nx = n2**2 + n4**2
        nn2 = math.sqrt(nx)
        print("")
        print("el resultado de la resta es: ","(",nn1," +- ",nn2,")")
    elif x== 3:
        print ("")
        print ("error cuadratico N.1")
        n1 = float(input("escriba el promedio en decimales: "))
        n2 = float(input("escriba el error en decimales: "))
        print ("")
        print ("error cuadratico N.2")
        n3 = float(input("escriba el promedio en decimales: "))
        n4 = float(input("escriba el error en decimales: "))
        print("")
        nn1 = n1 * n3
        v1 = n2/n1
        v2 = n4/n3
        vv = v1**2 + v2**2
        nn2 = math.sqrt(vv) * nn1
        print("")
        print("el resultado del producto es: ","(",nn1," +- ",nn2,")")
    elif x== 4:
        print ("")
        print ("error cuadratico N.1")
        n1 = float(input("escriba el promedio en decimales: "))
        n2 = float(input("escriba el error en decimales: "))
        print ("")
        print ("error cuadratico N.2")
        n3 = float(input("escriba el promedio en decimales: "))
        n4 = float(input("escriba el error en decimales: "))
        nn1 = n1 / n3
        v1 = n2/n1
        v2 = n4/n3
        vv = v1**2 + v2**2
        nn2 = math.sqrt(vv) * nn1
        print("")
        print("el resultado del divicion es: ","(",nn1," +- ",nn2,")")
    elif x == 5:
        print ("")
        print ("que operacion esta haciendo la constante")
        print("1. producto")
        print("2. divicion")
        op = int(input("elija la opcion: "))
        if op == 1:
            print("")
            con = int(input("cuan es la constante: "))
            print ("")
            print ("error cuadratico ")
            n1 = float(input("escriba el promedio en decimales: "))
            n2 = float(input("escriba el error en decimales: "))
            nn1 = con * n1
            nn2 = con * n2
            print ("")
            print ("el resultado de la multiplicacion es: ",nn1," +- ",nn2)
        elif op == 2:
            print("")
            con = int(input("cuan es la constante: "))
            print ("")
            print ("error cuadratico ")
            n1 = float(input("escriba el promedio en decimales: "))
            n2 = float(input("escriba el error en decimales: "))
            nn1 = n1 / con
            nn2 = n2 / con
            print ("")
            print ("el resultado de la divicion es: ",nn1," +- ",nn2)
    elif x == 6:
        print("")
        con = int(input("cuan es la potencia: "))
        print ("")
        print ("error cuadratico ")
        n1 = float(input("escriba el promedio en decimales: "))
        n2 = float(input("escriba el error en decimales: "))
        nn1 = n1**con
        m = con -1
        v1 = con*(n1**m)
        nn2 = v1*n2
        print ("")
        print ("el resultado de la potencia es: ",nn1," +- ",nn2)
    q = input("")
print("'-----------'")
print("operaciones")
print("'-----------'")
print("1. suma")
print("2. resta")
print("3. producto")
print("4. divicion")
print("5. constante")
print("6. potencia")
print("")
op = int(input("elija opcion: "))
operaciones(op)
