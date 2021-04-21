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
        la s0, Current
        la s1, Dreams
        la a2, Jobs
        lw a2, 0(a2)
        mv t0, zero
        addi a2, a2, -1

    for:
        lw a3, 0(s0)  # 0
        lw a4, 0(s1)  # 4
        bgt a3, a4, actual_es_mayor  # ifa3 >a41 arget
        blt a3, a4, actual_es_menor # if a3 <a41 actual_es_menorarget
        beq t0, a2, end
        addi t0, t0, 1
        addi s0, s0, 4
        addi s1, s1, 4
        j for
        

    actual_es_mayor:
        addi a3, a3, -1
        bgt a3, a4, actual_es_mayor
        sb a3, 0(s0)
        j for

    actual_es_menor:
        addi a3, a3, 1
        blt a3, a4, actual_es_menor
        sb a3, 0(s0)
        j for

    end:
