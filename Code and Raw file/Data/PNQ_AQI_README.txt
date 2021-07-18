src = "https://www.kaggle.com/prathmeshn/pune-air-quality-index"





This is Pune city's AQI data which is collected from official government site, this contains records from the year 2009 to 2019. As the population density increases more and more people are buying vehicles this affects the pollution rates and quality of air.
The quality of air is measured using the AQI. Basically it's a measure of how pollution affects people's health. If the AQI is high then it will cause greater damage to respiratory organs, prior to this people will also find difficulty in breathing and end up developing long term diseases.
In order to reduce the impact to minimal range it is necessary to keep an eye on the AQI for at least 2-3 days per week.
Below is range of AQI from minimal to hazardous range.

(0-50)- good.
(51-100)- satisfactory, might cause little discomfort while breathing.
(101-200)- moderate pollution, might cause some lung diseases like asthma.
(201-300)- bad, will cause even more discomfort may also develop heart problems.
(301-400)- very bad, exposure to this air will cause severe damage and may need oxygen supply.
(401-500)- hazardous, this will create worst effect on bodies long time exposure will reduce life spam.

These the following features of dataset.

1) date - date when data was recorded.
2) SO2 µg/m3 - sulfur dioxide concentration, micrograms per cubic meter.
3) Nox µg/m3 - nitrogen dioxide concentration, micrograms per cubic meter.
4) RSPM µg/m3 - it's a type of particulate matter and a fraction of TSPM, micrograms per cubic meter.
5) SPM - Suspended particulate matter, which is released from air of industrial area due to combustion.
6) CO2 µg/m3 - carbon dioxide emission, micrograms per cubic meter.
7) AQI - air quality index recorded.
8) Location - place where the AQI was noted.

Based on the above mentioned features, the aim is to build a machine learning model which can predict AQI based on the 7 features and the datasets consist of 7844 records. This will help to get an idea how the AQI will be in upcoming days.