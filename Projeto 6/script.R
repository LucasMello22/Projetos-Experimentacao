di <- c(4.58,	4.4,	3.64,	4.73,	5.87,	4.69,	4.86,	4.54,	5.09,	4.93,	7.08,	7.81,	
        8.87,	6.52,	6.8,	8.3,	3.58,	7.63,	10.07,	8.33,	5.78,	5.64,	7.56,	9.74,
        8.88,	5.25,	6.35,	9.92,	8.35,	6.01,	7.94,	10.25,	9.72,	9.82,	9.53,	9.99,
        6.73,	10.09,	10.72,	10.2,	9.8,	10.65,	10.36,	10.43,	10.14,	11.28,
        10.85,	8.33,	8.59,	11.15,	9.75,	10.72,	11.18,	9.57,	9.86,	10.2,	10.11,
        11.14,	7.8,	10.67,	12.37,	10.07,	12.38,	11.39,	12.71,	10.13,	9.97,
        14.03,	8.19,	9.86,	11.37,	13.49,	10.65,	10.95,	11.37,	10.39,	13.2,
        10.96,	11.68,	9.33,	12.82,	12.83,	11.98,	11.3,	10.8,	13.61,	9,	11.18,
        13.99,	13.52,	10.37,	13.59,	13.97,	12.2,	12.21,	10.25)
mi <- c(0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,
        0,	0,	0,	0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,
        0,	0,	1,	1,	1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0, 1,	1,
        1,	1,	1,	1,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	1,	1,	1,
        1,	1,	1,	1,	0,	0,	0,	0,	0,	0, 0, 0,	1,	1,	1,	1,	1,	1,	1,
        1)
fos <- rep(c(0, 100, 200, 300, 400, 500), each= 16)
dados <- data.frame("Fosforo" = fos, "Micorriza"= mi, "Diametro" = di)
dados
t.test(di, conf.level=0.95)
cv <-function(x)  {coef <- sd(x)/mean(x)*100
return(coef)}
cv(di) #Calculo do Coef. de Variação #
sd(di) # Calculo do Desv. Padrão #
tapply(fos,di,var)
var.test(di,mi)
t.test(di,mi)
boxplot(data = dados, dados$Diametro ~ dados$Micorriza)
boxplot(data = dados, dados$Diametro ~ dados$Fosforo)
boxplot (data = dados, dados$Diametro ~ dados$Micorriza/dados$Fosforo)
library(easyanova)
ea2(data=dados, design = 1)
mean(di)
median(di)
max(di)
min(di)
cv(di)

