algoritmo "bubblesort"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
x, vec_length, i, j, temp: inteiro
vec: vetor [1..5] de inteiro

inicio
prompt <- "> "

para i de 1 ate 5 faca
     escreva("Entre o número da posição")
     escreval(i)
     escreva(prompt)
     leia(x)
     vec[i] <- x
fimpara

vec_length <- 5

para i de 1 ate vec_length faca
     para j de i ate (vec_length - i - 1) faca
          se vec[j] > vec[j + 1] entao
             temp <- vec[j]
             vec[j] <- vec[j + 1]
             vec[j + 1] <- temp
          fimse
     fimpara
fimpara



para i de 1 ate 5 faca
     escreva(vec[i])
fimpara

fimalgoritmo
