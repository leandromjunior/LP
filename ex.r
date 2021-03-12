y <- scan()

while (length(y) != 10){
  print("Informe 10 valores abaixo para preencher o vetor!!!")
  cat("Você digitou:", length(y), "valores")
  y <- scan()
}

print(y[8-1])

decre <- sort(y, decreasing = TRUE)
print(decre) #Printando em ordem decrescente

ordem = sort(y)

print(ordem)

cat("Segundo maior Valor:", ordem[9])

