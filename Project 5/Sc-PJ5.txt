library(easyanova) #primeiramente ler o pacote #
trat <- rep(c("a","b","c"), times=3, each=5) # criando os tratamentos #
trat
bloc<- rep(c(1:5), times=9) # criando os blocos #
bloc
alt <- c(83, 86, 103, 116, 132, # criando os valores de altura #
         63, 69, 79, 81, 98,
         55, 61, 79, 79, 91)
dbc <- data.frame("Tratamento" = trat, "Blocos" = bloc, "Altura" = alt) # criando data.frame #
dbc
ea1(dbc[,c(1,2,3)], design=2, plot=3)
cv <-function(x)  {coef <- sd(x)/mean(x)*100
return(coef)}   # criando a função para o coeficiente de variação #
cv(alt)
?easyanova
ea1 (data = dbc, design = 2, plot=3)
# é Possivel observar que os valores do CV demonstram que há uma 
# baixa precisão, valor entre 20 à 30 %, CV = 24,44 % #
# Com a Anova foi possivel observar que, estatisticamente, os 
# valores medios são diferentes #