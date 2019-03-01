algoritmo "salario"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
nome: caractere
salario, vendas: real

inicio
prompt <- "> "
escreval("Entre o nome do vendedor:")
escreva(prompt)
leia(nome)
escreva("Entre (em reais) o salário fixo de ")
escreva(nome)
escreval(":")
escreva(prompt)
leia(salario)
escreva("Entre (em reais) o total de vendas efetuadas por ")
escreval(nome)
escreval("no último mês:")
escreva(prompt)
leia(vendas)

escreva("O salário fixo de ")
escreva(nome)
escreva(" é de R$")
escreval(salario)
escreva("O salário final de ")
escreva(nome)
escreva(" é de R$")
escreva(salario + 0.15 * vendas)

fimalgoritmo