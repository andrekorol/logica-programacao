algoritmo "media_alunos"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
notas_vec: vetor [1..10] de real
nota, soma_notas, media: real
num_alunos, notas_acima_media, i: inteiro

inicio
prompt <- "> "
soma_notas <- 0
notas_acima_media <- 0

escreval("Entre o número de alunos na classe:")
escreva(prompt)
leia(num_alunos)

para i de 1 ate num_alunos faca
     escreva("Entre a nota do aluno de número")
     escreval(i)
     escreva(prompt)
     leia(nota)
     notas_vec[i] <- nota
fimpara

para i de 1 ate num_alunos faca
     soma_notas <- soma_notas + notas_vec[i]
fimpara

media <- soma_notas / num_alunos

para i de 1 ate num_alunos faca
     se notas_vec[i] >= media entao
        notas_acima_media <- notas_acima_media + 1
     fimse
fimpara

escreva("A média da classe foi igual a")
escreval(media:3)
escreva(notas_acima_media)
escreva(" aluno(s) ficaram acima da média")

fimalgoritmo
