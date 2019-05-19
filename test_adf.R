#### Projet de Séries Temporelles ####
#### Auteurs : Andréa Epivent et Dimitri Meunier ####

library(zoo)
library(tseries)

setwd("/Users/admin/Desktop/ENSAE/2A/S2/Séries temporelles/Projet/TimeSeries")
data = read.csv("Trefilage/valeurs_mensuelles.csv", sep=";")[3:352,1:2]
colnames(data) <- c("Date","Trefilage")

# Format des dates

start <- 1990; end <- 2019+1/12
dates_sequence <- seq(from=start,to=end,by=1/12)
dates <- as.yearmon(dates_sequence)
trefilage <- zoo(data[[2]], order.by=dates)
log_trefilage <- log(trefilage) # La série finale sur laquelle on fait les différenciations
log_trefilage_diff <- diff(diff(log_trefilage, 12),1) # Notre série finale différenciée

plot(log_trefilage)
plot(diff(log_trefilage,12))
plot(log_trefilage_diff)

#### Partie 1 ####
#### Test ADF ####

# Remarque : Nous avons décidé de passer par R pour cette partie car les fonctions
# permettant d'exécuter ce test sous Python ne donne les résidus de la régression en sortie
# et ne permettent pas de vérifier leur validité.

# Test de stationnarité - Log du tréfilage

kpss.test(log_trefilage, null = c("Level"), lshort = TRUE)

# Test de stationnarité - Log du tréfilage + diff(12)

kpss.test(diff(log_trefilage,12), null = c("Level"), lshort = TRUE)

# Test de stationnarité - Log du tréfilage diff(12) + diff(1)

kpss.test(log_trefilage_diff, null = c("Level"), lshort = FALSE)

