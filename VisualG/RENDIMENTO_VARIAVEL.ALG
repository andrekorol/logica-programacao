algoritmo "rendimento_variavel"
// Disciplina   : [L�gica para Programa��o]
// Professor   : Carlos Henrique Netto Lahoz

var

prompt: caractere
rendimento, valor: real
meses: inteiro

inicio

prompt <- "> "

escreval("Entre a taxa de rendimento ao m�s (em porcentagem)")
escreval("e.g. para 10% digite apenas 10, sem o s�mbolo '%': ")
escreva(prompt)
leia(rendimento)
escreval("Entre a quantidade de meses para o investimento: ")
escreva(prompt)
leia(meses)
escreval("Entre o valor inicial a ser investido, em reais (R$): ")
escreva(prompt)
leia(valor)
escreva("O valor final, com o rendimento, ser� de R$")
escreva(valor * exp((1 + rendimento / 100), meses))

fimalgoritmo