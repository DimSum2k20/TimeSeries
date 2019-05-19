#### Etude de modèle SARIMA

library(astsa)

setwd("/Users/admin/Desktop/ENSAE/2A/S2/Séries temporelles/Projet/TimeSeries")
data = read.csv("Trefilage/valeurs_mensuelles.csv", sep=";")[3:352,1:2]
colnames(data) <- c("Date","Trefilage")

log_dfT = data[[2]]

SARIMA_dfT = sarima(log_dfT,6,1,1,1,1,1,12, details=FALSE)
SARIMA_dfT$residuals
