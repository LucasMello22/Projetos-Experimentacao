rpt <- c(10,12,8,12,13,8,12,11,7,13,13,16,13,17,15,17,15,13,18,16,14) 
ttm  <- rep(c("T1", "T2","T3","T4","T5", "T6", "T7"), each=3)
dados <- data.frame(rpt,ttm)
dados
str(dados)
library(ggplot2)
g <- ggplot(dados)
g <- g +
  geom_point(aes(x = ttm,
                 y = rpt,
                 color =ttm))
 
            
g <- g +
  labs(tittle = "Tratamentos",
       x = "Testemunhas",
       y= "Repetições")
g

anova.mod <-lm(rpt~ttm, data=dados)
summary(anova.mod)
anova(anova.mod)
t.test(rpt, conf.level =0.95)
cv <-function(x)  {coef <- sd(x)/mean(x)*100
return(coef)}
cv(rpt)

