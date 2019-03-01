algoritmo "celsius_para_fahrenheit"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
temp: real

inicio
prompt <- "> "
escreval("Entre a temperatura em graus Celsius:")
escreva(prompt)
leia(temp)

escreva("A temperatura em graus Fahrenheit é igual a")
escreva((9 * temp + 160) / 5)
escreva("°F")

fimalgoritmo
