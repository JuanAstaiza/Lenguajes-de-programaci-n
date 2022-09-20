#PROGRAMA PARA INICIO DE SESSION (LOGIN)

import os

user= "abc"
password="123"
booleano="NO"


#FUNCTION

def attempts_validation(c):
    if c == 1:
        print(". LOGIN FAILED (You has two attempts).")
        print("___________________")
        print("")
        booleano = "NO"
    elif c == 2:
        print(".. TRY AGAIN (You has one attempt)..")
        print("___________________")
        print("")
        booleano = "NO"
    else:
        print("... BLOCKED ...")
        print("___________________")
        print("")
        booleano = "SI"
    return booleano


def user_validation(x,y,con):
    if x==user and y==password:
        print("____________________________")
        print(".... LOGIN SUCCESFULL ....")
        print("____________________________")
        booleano="SI"
    elif x!=user and y==password:
        print("")
        print("___________________________")
        print("Incorrect User ....")
        booleano = attempts_validation(con)
    elif x==user and y!=password:
        print("")
        print("___________________________")
        print("Incorrect Password ....")
        booleano = attempts_validation(con)
    elif x!=user and y!=password:
        print("")
        print("_____________________________")
        print("Incorrect user and password ....")
        booleano = attempts_validation(con)

    return booleano
    
cont=0
while booleano!="SI":
    cont+=1
    print("::::. LOGIN .::::")
    print("")
    us=input("User name: ")
    pas=input("Password: ")
    input("Please press ENTER to continue...")
    booleano=user_validation(us,pas,cont)


