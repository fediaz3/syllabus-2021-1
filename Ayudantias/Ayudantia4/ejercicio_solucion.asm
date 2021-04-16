#############################
#	Ayudantia 4 	    #
#############################

# Tenemos a 6 individuos que trabajan todos los dias en sus respectivas pegas.
# Sin embargo, ninguno de estos se siente realmente satisfecho con lo que hace
# todos los dias. Es por esto que deben disenar un show de television llamado DCCrazyDreams,
# en donde cada individuo tiene una chance de cambiar su trabajo por el de otra persona
# y asi convertirse en lo que siempre ha sonado.

# Los trabajos son los siguientes:
# 0 - Domador de leones (rawr >.<)
# 1 - Mimo
# 2 - Analista de control de gestion
# 3 - Empujador de trenes
# 4 - Catador de comida de perro
# 5 - Ayudante de Arquitectura de Computadores

# Su trabajo es encontrar los trabajos deseados de cada participante e intercambiarlos
# por su trabajo actual.

# (realmente es convertir una lista en otra)

.globl start

.data
    Current: .word 0, 3, 5, 4, 1, 2
    Dreams: .word 4, 1, 2, 3, 5, 0
    Jobs: .word 6
.text
    start:
    la s0, Current  # encontramos la direccion donde parte la primera lista
    la s1, Dreams  # encontramos la direccion donde parte la segunda lista
    la a2, Jobs
    lw a2, 0(a2) # a2 tiene el numero de trabajos
    addi a2, a2, -1 # la lista va de 0 a 5
    mv t0, zero # seteamos el contador en 0

    for:
        lbu a3, 0(s0) # cargamos trabajo actual en a3
        lbu a4, 0(s1) # cargamos trabajo sonado en a4
        bgt a3, a4, actual_es_mayor # if a3 > a4 then actual_es_mayor
        blt a3, a4, actual_es_menor # if a3 < a4 then actual_es_menor
        beq t0, a2, end # revisamos si terminamos de recorrer las listas
        addi t0, t0, 1 # incrementamos el contador
        addi s0, s0, 4 # incrementamos ambas direcciones de memoria en 4
        addi s1, s1, 4 # porque cada word ocupa 4 bytes
    j for
    
    actual_es_mayor:
        # restarle una unidad al trabajo actual
        addi a3, a3, -1
        bgt a3, a4, actual_es_mayor
        sb a3, 0(s0)  # store in s0(trabajo actual) el trabajo deseado
    j for
    
    actual_es_menor:
        # sumarle una unidad al trabajo actual
        addi a3, a3, 1
        blt a3, a4, actual_es_menor
        sb a3, 0(s0)  # store in s0(trabajo actual) el trabajo deseado
    j for
    
end:
