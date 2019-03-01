algoritmo "consumo_medio"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
distancia, combustivel_gasto: real

inicio
prompt <- "> "
escreval("Entre a distância total percorrida (em quilômetros):")
escreva(prompt)
leia(distancia)
escreval("Entre o total de combustível gasto (em litros):")
escreva(prompt)
leia(combustivel_gasto)
escreva("Seu consumo médio é de")
escreva(distancia / combustivel_gasto)
escreva("km/L")

fimalgoritmo