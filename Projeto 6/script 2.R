##graficos dos dados##

boxplot(data = dados, dados$Diametro ~ dados$Micorriza)
boxplot(data = dados, dados$Diametro ~ dados$Fosforo)

## interação dos tratamentos## 

boxplot (data = dados, dados$Diametro ~ dados$Micorriza/dados$Fosforo)

library(easyanova)

ea2(data=dados, design = 1)


#grafico interação

interaction.plot(dados$Fosforo, dados$Micorriza, dados$Diametro, las=1, col=1:6, bty='l', 
                 xlab='', ylab='Diâmetro', trace.label="Micorriza")

interaction.plot(dados$Micorriza, dados$Fosforo, dados$Diametro, las=1, col=1:6, bty='l', 
                 xlab='', ylab='Diâmetro', trace.label="Fósforo")

##Estatística descritiva

Média = with(data = df, mean(df$Diametro))
Variância = with(data = df, var(df$Diametro))
Desvio = with(data = df, sd(df$Diametro))
CV = Desvio / Média * 100
desc = cbind(Média, Variância, Desvio, CV)
desc

# Análise descritiva dos diâmetros em relação a micorriza
Médias1 = with(data = dados, tapply(dados$Diametro, dados$Micorriza, mean))
Variâncias1 = with(data = dados, tapply(dados$Diametro, dados$Micorriza, var))
Desvios1 = with(data = dados, tapply(dados$Diametro, dados$Micorriza, sd))
CV1 = Desvios1/Médias1 * 100
desc1 = cbind(Médias1, Variâncias1, Desvios1, CV1)
desc1

# Análise descritiva dos diâmetros em relação a fósforo
Médias2 = with(data = dados, tapply(dados$Diametro, dados$Fosforo, mean))
Variâncias2 = with(data =dados, tapply(dados$Diametro, dados$Fosforo, var))
Desvios2 = with(data = dados, tapply(dados$Diametro, dados$Fosforo, sd))
CV2 = Desvios2/Médias2 * 100
desc2 = cbind(Médias2, Variâncias2, Desvios2, CV2)
desc2

# Análise descritiva dos diâmetros juntando os fatores
Médias4 = with(data = dados, tapply(dados$Diametro, list(dados$Micorriza, dados$Fosforo), mean))
Variâncias4 = with(data = dados, tapply(dados$Diametro, list(dados$Micorriza, dados$Fosforo), var))
Desvios4 = with(data = dados, tapply(dados$Diametro, list(dados$Micorriza, dados$Fosforo), sd))
CV4 = Desvios4/Médias4 * 100
desc4 = cbind(Médias4, Variâncias4, Desvios4, CV4)
desc4

#grafico interação

interaction.plot(dados$Fosforo, dados$Micorriza, dados$Diametro, las=1, col=1:6, bty='l', 
                 xlab='', ylab='Diâmetro', trace.label="Micorriza")

interaction.plot(P_subdividida$floresta, P_subdividida$desrama, P_subdividida$indiv, las=1, col=1:6, bty='l', 
                 xlab='', ylab='Índivíduos', trace.label="Desrama")


