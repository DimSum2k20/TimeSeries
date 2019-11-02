# TimeSeries Project - ENSAE Paris - 2nd year

The purpose of this project is to model and forecast the industrial production index observed in France and available on the INSEE website: (\url{https://www.insee.fr/fr/statistiques?debut=0&categorie=10}). First, we stationarize the chosen series: the electricity trade, by trying several seasonal adjustment methods. Then, we validate our transformations using unit root and stationarity tests. Then, we look for the ARMA model that best matches our transformed series by following the methodology established by Box and Jenkins. We find that our series follows an ARMA(4,4). Finally, we look at the region of confidence that our forecasts verify. 

`Report.pdf` contains the report (in French) and `Sujet.pdf` the instructions (in French).
