```{r}
# Definindo o número de passos e o número de trajetórias
n <- 1000
trajetorias <- 100

# Inicializando a matriz para armazenar as trajetórias
caminhos <- matrix(0, nrow = n, ncol = trajetorias)

# Simulando as trajetórias
for (i in 1:trajetorias) {
  # Gerando os passos aleatórios para cada trajetória
  passos <- sample(c(-1, 1), n, replace = TRUE)
  
  # Calculando o caminho acumulado (soma dos passos)
  caminhos[, i] <- cumsum(passos)
}
```

```{r}
# Plotando as 100 trajetórias
matplot(1:n, caminhos, type = "l", col = rainbow(trajetorias), 
        lwd = 1, xlab = "Número de Passos", ylab = "Posição", 
        main = "100 Trajetórias de Caminho Aleatório 1D")
```

```{r}
# Inicializando um vetor para armazenar as distâncias das trajetórias
distancias <- numeric(trajetorias)

# Simulando as trajetórias e calculando as distâncias
for (i in 1:trajetorias) {
  # Gerando os passos aleatórios para cada trajetória
  passos <- sample(c(-1, 1), n, replace = TRUE)
  
  # Calculando a posição final
  posicao_final <- sum(passos)
  
  # Calculando a distância em relação à origem (valor absoluto da posição final)
  distancias[i] <- abs(posicao_final)
}

# Calculando a distância média
distancia_media <- mean(distancias)

# Exibindo o resultado
distancia_media
```