algoritmo "troca_valores"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
A, B, tmp: caractere

inicio
prompt <- "> "
escreval("Entre o valor da vari�vel A:")
escreva(prompt)
leia(A)
escreval("Entre o valor da vari�vel B:")
escreva(prompt)
leia(B)

tmp <- A
A <- B
B <- tmp
escreva("A = ")
escreval(A)
escreva("B = ")
escreva(B)

fimalgoritmo
