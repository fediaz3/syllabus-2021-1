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