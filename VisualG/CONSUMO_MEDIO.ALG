algoritmo "consumo_medio"
// Disciplina   : [Lgica para Programao]
// Professor   : Carlos Henrique Netto Lahoz

var
prompt: caractere
distancia, combustivel_gasto: real

inicio
prompt <- "> "
escreval("Entre a dist�ncia total percorrida (em quil�metros):")
escreva(prompt)
leia(distancia)
escreval("Entre o total de combust�vel gasto (em litros):")
escreva(prompt)
leia(combustivel_gasto)
escreva("Seu consumo m�dio � de")
escreva(distancia / combustivel_gasto)
escreva("km/L")

fimalgoritmo