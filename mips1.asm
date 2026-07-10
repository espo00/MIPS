#$zero vale sempre 0
#$s0-$s7 sono le variabili del programma
#$t0-$t9 sono i registri temporanei
#$a0-$a3 argomenti di funzione
#$v0 valore resituito da una funzione o codice di syscall
#$ra indirizzo a cui tornare dopo jal
#$sp è lo stack

.data #dati in memoria 

.text	#istruzioni eseguibili


main:
#int a = 5, int b = 8.
#addi serve per assegnare dei valori ad una variabile
#addi destinazione, registro_sorgente, numero
# addi $s0, $zero, 5     # a = 5
# addi $s1, $zero, 8     # b = 8


#add serve per sommare

# add $s2, $s0, $s1 # s2 = s0 + s1 ==== 13

# sub $s2, $s0, $s1 # s2 = s0 - s1 ==== -3

#slt (set less than) serve per fare un confronto, se salva 1 il confronto è vero, altrimenti 0


# addi $a0, $s2, 0 #metto il valore della somma dentro all'argomento della funzione che è $a0
# addi $v0, $zero, 1  #serve per stampare un numero intero
# syscall


##operazioni logiche sui bit
# and $s2, $s0, $s1 fa l'and logico tra i valori delle variabili $s0 e $s1
# or $s2, $s0, $s1 fa l'or logico tra i valori delle variabili $s0 e $s1
# andi fa and con un numero immediato, molto utile per controllare se il numero è pari o dispari. andi $t0, $s0, 1
# se $t0 = 0 il numero era pari, se $t0 = 1 il numero era dispari

#sll $s1, $s0, 1 (shift left logico) sposta tutti i bit di $s0 a sinistra di una posizione, per numeri positivi significa fare *2
#s1 = $s0 * 2;

#srl $s1, $s0, 1 (shift right logico) Sposta i bit a destra. Per numeri senza segno equivale a dividere per 2, ignorando il resto.


#crea un programma che calcoli la somma tra 7+4 e stampi il risultato
addi $s0, $zero, 7
addi $s1, $zero, 4
add $s2, $s0, $s1

addi $a0, $s2, 0
addi $v0, $zero, 1
syscall

  
# termina il programma
addi $v0, $zero, 10
syscall

