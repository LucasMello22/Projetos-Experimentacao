bloc <- c('1',"2", "3", "Totais")
b1 <- c(83, 63, 55, 201)
b2 <- c(86, 69, 61, 216)
b3 <- c(103, 79, 79, 261)
b4 <- c(116, 81, 79, 276)
b5 <- c(132, 98, 91, 321)
tot <- c(520, 390, 365, 1275)
dados <- data.frame("Bloco" = bloc, "1" = b1, "2" = b2, "3" = b3,
                    "4" = b4, "5" = b5, "Totais" = tot)
dados
install.packages("ExpDes.pt")
library(ExpDes.pt)
ExpDes.pt
rm(dados)
