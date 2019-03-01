algoritmo "custo_carro"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
custo: real
// custo_fabrica, custo_imposto, custo_distribuidor, custo_consumidor: real

inicio
prompt <- "> "
escreval("Entre o valor do custo de fábrica do carro (em reais):")
escreva(prompt)
leia(custo)

// leia(custo_fabrica)
// custo_imposto <- custo_fabrica * 0.45
// custo_fabrica <- custo_fabrica + custo_imposto
// custo_consumidor <- custo_fabrica + custo_fabrica * 0.28

escreva("O custo do carro ao consumidor é de R$")
escreva(custo * 1.45 + ((custo * 1.45) * 0.28))
// escreva(custo_fabrica * 1.45 + ((custo_fabrica * 1.45) * 0.28))

fimalgoritmo
