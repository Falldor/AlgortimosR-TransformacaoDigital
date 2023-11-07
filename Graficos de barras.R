library(ggplot2)
dados <- read.csv("E:/Documentos/Faculdade/S8/TD/dados.csv")

categorias_desejadas <- c("Menos de 20.","Entre 20  a 30.","Entre 30 a 40.","Mais de 40.")
dados$Quantos.anos.você.tem. <- factor(dados$Quantos.anos.você.tem., levels = categorias_desejadas)

frequencias1 <-table(dados$Quantos.anos.você.tem.)
porcentagens1 <- (frequencias2/sum(frequencias2)) * 100

DadosQ1 <- data.frame( Categorias = c("Menos de 20.","Entre 20 a 30.","Entre 30 a 40.","Mais de 40."),Porcentagem = as.numeric(porcentagens2), Ordem = c(1,2,3,4))
grafico <- ggplot(DadosQ1, aes(x = reorder (Categorias, Ordem), y = Porcentagem)) + 
  geom_bar(stat = "identity", fill = "red")+ 
  geom_text(aes(label = paste0(round(Porcentagem, 1), "%")), vjust = -0.5) +
  labs(x = "Categorias", y = "Valores") + 
  ggtitle("") + 
  theme_minimal()+
  theme(axis.text.x = element_text(size = 13))

print(grafico)

categorias_desejadas <- c("Não utilizo plataformas de streaming","Plataformas como Spotify, Amazon Music, Itunes music e etc.","Plataformas como Netflix, Prime Video, Disney+ e etc","Plataformas como Netflix, Prime Video, Disney+ e etc, Plataformas como Spotify, Amazon Music, Itunes music e etc.")
dados$Quais.plataformas.de.streaming.você.utiliza. <- factor(dados$Quais.plataformas.de.streaming.você.utiliza., levels = categorias_desejadas)
frequencias2 <-table(dados$Quais.plataformas.de.streaming.você.utiliza.)
porcentagens2 <- (frequencias2/sum(frequencias2)) * 100

DadosQ2 <- data.frame( Categorias = c("Nenhuma tipo de plataforma de streaming", "Somente plataformas de streaming de áudio", "Somente plataformas de streaming de  vídeo", "Ambos tipos de plataforma de streaming"),Porcentagem = as.numeric(porcentagens2), Ordem = c(1,2,3,4))
grafico <- ggplot(DadosQ2, aes(x = reorder (Categorias, Ordem), y = Porcentagem)) + 
  geom_bar(stat = "identity", fill = "green")+ 
  geom_text(aes(label = paste0(round(Porcentagem, 1), "%")), vjust = -0.5) +
  labs(x = "Categorias", y = "Valores") + 
  ggtitle("") + 
  theme_minimal()+
  theme(axis.text.x = element_text(size = 13))

print(grafico) 



 
