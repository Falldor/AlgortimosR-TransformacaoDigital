dados <- read.csv("E:/Documentos/Faculdade/S8/TD/dados.csv")
colnames(dados)[5:13] <- c("Q5","Q6","Q7","Q8","Q9","Q10","Q11","Q12","Q13") 


questoes <- data.frame(
  Q7 <- dados$Q7,
  Q12 <- dados$Q12
)
#Q5 <- dados$Q5,
#Q6 <- dados$Q6,
#,
#Q9 <- dados$Q9,
#Q8 <- dados$Q8,
#Q9 <- dados$Q9,
#Q10 <- dados$Q10,
#Q11 <- dados$Q11,
#Q13 <- dados$Q13


library(likert)
library(plyr)
likert_q1 <- likert(questoes, nlevels = 5)
colnames(likert_q1$results)[2:6] <- c("Discordo Totalmente", "Discordo Parcialmente", "Neutra", "Concordo Parcialmente", "Concordo Totalmente")

graficoLikert <-likert.bar.plot(likert_q1,plot.percents=F,legend = "Legenda", low.color = "red", high.color = "green", text.size=4) + ggtitle("") + labs( x = "Questões", y = "Porcentagem") + theme_minimal() + theme(legend.position = "bottom")
print(graficoLikert)
