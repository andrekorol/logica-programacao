algoritmo "conv_dolar_real"
// Disciplina   : [L�gica para Programa��o] 
// Professor   : Carlos Henrique Netto Lahoz 

var

prompt: caractere
cotacao_dolar, valor: real

inicio

prompt <- "> "

escreval("Entre o valor da cota��o do d�lar (US$), em real (R$):" )
escreva(prompt)
leia(cotacao_dolar)

escreval("Entre o valor em d�lar:")
escreva(prompt)
leia(valor)

escreva("Valor convertido para reais:")
escreva(valor * cotacao_dolar)

fimalgoritmo