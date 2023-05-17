# Mini-Projeto 2

# Limpeza e Transformação de Dados com Power Query e Linguagem R

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/dmpm/Documents/PowerBI/Cap12")
getwd()

# Instala os pacotes
install.packages("dplyr")  #pacotes para manipulação de dados
install.packages("data.table") #pacotes para transformação de dados
install.packages("ggplot2")

# Carrega os pacotes
library(dplyr)
library(data.table)
library(ggplot2)

# Carrega os dados
# Fonte de dados: https://archive.ics.uci.edu/ml/datasets/iris
dados_iris <- iris
View(dados_iris)


# Tarefa 1 - Sumarizar os dados com as mÃ©dias de cada coluna de um dataset.
library(dplyr)
medias_iris <- summarize(group_by(dados_iris, Species), #função para sumarizar
                         media_sepal_length = mean(Sepal.Length), 
                         media_sepal_width = mean(Sepal.Width),
                         media_petal_length = mean(Petal.Length), 
                         media_petal_width = mean(Petal.Width))

View(medias_iris)


# Tarefa 2 - Extrair o valor inteiro de uma das colunas decimais.
library(data.table)
dados_iris_id <- data.table(dados_iris)
View(dados_iris_id)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
View(dados_iris_id)


# Para executar no Power Query
library(data.table)
dados_iris_id <- data.table(dados_iris) #converteu os dados da tabela em data.table
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length) #função para extrair a parte inteira do numero:as.integer


# Tarefa 3 â€“ Construir um grÃ¡fico mostrando a relaÃ§Ã£o de duas variÃ¡veis numÃ©ricas para as 3 categorias de uma variÃ¡vel categÃ³rica.
library(ggplot2)
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) + #camada de dados/ duas colunas numericas
  geom_point(aes(color = Species), size = 3) + # grafico de dispersão
  ggtitle("Largura e Comprimento das PÃ©talas") +
  labs(x = "Largura da PÃ©tala", 
       y = "Comprimento da PÃ©tala") +
  theme_bw() +
  theme(title = element_text(size = 15, color = "turquoise4"))

# Cores disponÃ­veis na Linguagem R
colors()

