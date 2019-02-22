algoritmo "conv_dolar_real"
// Disciplina   : [Lógica para Programação] 
// Professor   : Carlos Henrique Netto Lahoz 

var

prompt: caractere
cotacao_dolar, valor: real

inicio

prompt <- "> "

escreval("Entre o valor da cotação do dólar (US$), em real (R$):" )
escreva(prompt)
leia(cotacao_dolar)

escreval("Entre o valor em dólar:")
escreva(prompt)
leia(valor)

escreva("Valor convertido para reais:")
escreva(valor * cotacao_dolar)

fimalgoritmo