from itertools import repeat
menor_preco = None
for _ in repeat(None, 3):
    preco = float(input("Entre um preço: "))
    if menor_preco is None or preco < menor_preco:
        menor_preco = preco
print("O produto que deve ser comprado é o que custa", menor_preco)
