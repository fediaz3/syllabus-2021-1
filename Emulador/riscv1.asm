#############################
#	Ayudant�a 4 	    #
#############################

# Tenemos a 6 individuos que trabajan todos los d�as en sus respectivas pegas.
# Sin embargo, ninguno de estos se siente realmente satisfecho con lo que hace
# todos los d�as. Es por esto que deben dise�ar un show de televisi�n llamado DCCrazyDreams,
# en donde cada individuo tiene una chance de cambiar su trabajo por el de otra persona
# y as� convertirse en lo que siempre ha so�ado.

# Los trabajos son los siguientes:
# 0 - Domador de leones (rawr >.<)
# 1 - Mimo
# 2 - Analista de control de gesti�n
# 3 - Empujador de trenes
# 4 - Catador de comida de perro
# 5 - Ayudante de Arquitectura de Computadores

# Su trabajo es encontrar los trabajos deseados de cada participante e intercambiarlos
# por su trabajo actual.

# (realmente es convertir una lista en otra)



.data
    Current: .byte 0, 3, 5, 4, 1, 2
    Dreams: .byte 4, 1, 2, 3, 5, 0
.text
    start:
    la a0, A  # encontramos la direcci�n donde parte la primera lista
    la a1, B  # encontramos la direcci�n donde parte la segunda lista
    for:
    lbu t1, 0(a0)  # trabajo primera persona
    lbu t2, 0(a1)  # trabajo deseado primera persona
    la a3, A  # almacenar address actual de primera persona en address de apoyo
    bgt t1, t2, actual_es_mayor
    blt t1, t2, actual_es_menor
    # si llega hasta ac� entonces la persona encontr� su trabajo deseado
    lbu t1, 1(a0)  # trabajo segunda persona
    lbu t2, 1(a1)  # trabajo deseado segunda persona
    
    # [Por implementar] almacenar address de segunda persona en a3
    
    bgt t1, t2, actual_es_mayor
    blt t1, t2, actual_es_menor
    # continuar as� para cada persona
    lbu t1, 2(a0)
    lbu t2, 2(a1)
    
    # [Por implementar] almacenar address de tercera persona en a3
    
    bgt t1, t2, actual_es_mayor
    blt t1, t2, actual_es_menor
    # 
    lbu t1, 3(a0)
    lbu t2, 3(a1)
    
    # [Por implementar] almacenar address de cuarta persona en a3
    
    bgt t1, t2, actual_es_mayor
    blt t1, t2, actual_es_menor
    #
    lbu t1, 4(a0)
    lbu t2, 4(a1)
    
    # [Por implementar] almacenar address de quinta persona en a3
    
    bgt t1, t2, actual_es_mayor
    blt t1, t2, actual_es_menor
    #
    lbu t1, 5(a0)
    lbu t2, 5(a1)
    
    # [Por implementar] almacenar address de sexta persona en a3
    
    bgt t1, t2, actual_es_mayor
    blt t1, t2, actual_es_menor
    j end  # para saltar al final
    
    
    actual_es_mayor:
    # restarle una unidad al valor temporal
    lbu t4, a3  # para obtener el value en la direcci�n temporal
    sub t4, t4, 1
    sb a3, t4  # store in address el valor nuevo
    j for
    
    actual_es_menor:
    # a�adirle una unidad al valor temporal
    lbu t4, a3
    addi t4, t4, 1
    sb a3, t4
    j for
    
     
    end: