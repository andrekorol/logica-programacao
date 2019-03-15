algoritmo "vetor_par_impar"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
vec: vetor [1..100] de inteiro
i: inteiro

inicio
para i de 1 ate 100 faca
     se i % 2 = 0 entao
        vec[i] <- 0
     senao
          vec[i] <- 1
     fimse
fimpara

escreva("[")
para i de 1 ate 100 faca
     escreva(vec[i])
fimpara
escreva("]")

fimalgoritmo
