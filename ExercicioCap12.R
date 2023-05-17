getdw()
setwd("C:/Users/WINDOWS10/Desktop/PowerBI/Cap12")
Notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# 1 - Apresente um resumo de tipos de dados e estatísticas do dataset.
str(Notas)

# 2 - Qual a média de cada turma?
sd(Notas$TurmaA)
sd(Notas$TurmaB)

# Qual turma apresentou maior variabilidade de notas? Justifique sua resposta.
sd(Notas$TurmaA)
sd(Notas$TurmaB)
  
#Calcule o coeficiente de variação das 2 turmas.

media_ta <- mean(Notas$TurmaA)
media_tb <- mean(Notas$TurmaB)

sd_ta <- sd(Notas$TurmaA)
sd_tb <- sd(Notas$TurmaB)
cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

# Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(Notas$TurmaA)
calculaModa(Notas$TurmaB)
