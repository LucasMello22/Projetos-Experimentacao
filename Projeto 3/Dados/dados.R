library(ggplot2)
library(dplyr)
View(projeto.2)

projeto.2
projeto.2[1:25,]
projeto.2[projeto.2$Ãrvore == "1L:10L"]
projeto.dados <- rbind(projeto.2[1:25,])
projeto.dados
