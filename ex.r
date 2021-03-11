#Caso o programa não rode direto, executar por partes, linha 3 -> linha 5-8 -> linha 10 -> 12 -> 14 -> 18

y <- scan() #Entrar com os dados pelo terminal

while (length(y) != 10){
  print("Informe 10 valores para preencher o vetor!!!")
  y <- scan()
}

print(y)

ordem = sort(y)

print(ordem)

print("Segundo maior Valor:")

print(ordem[9])

