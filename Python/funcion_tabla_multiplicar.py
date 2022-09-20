#PROGRAMA TABLA DE MULTIPLICAR

def Operacion(x,y,z):
    while y <= z:
         print (x,"*",y,"=",x*y)
         y=y+1
print ("::: TABLA DE MULTIPLICAR :::")
print ("")
tabla= int(input("Digite el número de la TABLA: "))
lim_inf= int(input("Digite el LIMITE INFERIOR de la TABLA: "))
lim_sup= int(input("Digite el LIMITE SUPERIOR de la TABLA: "))
print("")
print(":::: RESULTADO ::::")
print("")
Operacion(tabla,lim_inf,lim_sup)

