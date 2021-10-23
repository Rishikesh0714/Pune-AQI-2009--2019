# Pune-AQI-2009-2019

## AQI
AQI transforms complex air quality data of various pollutants into a single index value which makes it easy to understand. Extent of air pollution and its severity can be mapped by calculating AQI for the respective air pollutants. Increase in AQI indicates increased air pollution and increased chances of threats associated with pollutants to human health.


      
<p> This is Pune city's AQI App data which is collected from <a href="https://www.kaggle.com/prathmeshn/pune-air-quality-index">Kaggle</a> site, this contains records from the year 2009 to 2019. As the population density increases more and more people are buying vehicles this affects the pollution rates and quality of air.
        The quality of air is measured using the AQI. Basically it's a measure of how pollution affects people's health.</p>
        <p> If the AQI is high then it will cause greater damage to respiratory organs, prior to this people will also find difficulty in breathing and end up developing long term diseases.
            In order to reduce the impact to minimal range it is necessary to keep an eye on the AQI for at least 2-3 days per week.
            Below is range of AQI from minimal to hazardous range.</p>
            
            
1. (0-50)- good
2. (51-100)- satisfactory, might cause little discomfort while breathing
3. (101-200)- moderate pollution, might cause some lung diseases like asthma
4. (201-300)- bad, will cause even more discomfort may also develop heart problems
5. (301-400)- very bad, exposure to this air will cause severe damage and may need oxygen supply
6. (401-500)- hazardous, this will create worst effect on bodies long time exposure will reduce life spam


## Task

My main task is to do Exploratory data analysis of Air Quality Index of Pune city using data provided by public body and collected at diffrent locations within Pune.
I Used plotly package to show interactive plot where one can see underlying trend and also observe daily reading by <b> hovering </b> over plot.


![Average Aqi in pune (2009-2019)](https://user-images.githubusercontent.com/73766757/138567531-6b257d84-838b-47c1-b1cb-7d0cf1e1a8f3.png)


## Cookbook

- Step 1 :- Reading data There are 8 Columns and 7844 observations from 11 different locations.
- Step 2 :- Cleaning data Problems in this data is there are two formats of date and it need to be cleaned . I cleaned that format also selected only AQI, Date, and Location columns for ploting as we don’t need other columns we drop it. 
- Step 3 :- Explotary Analysis 
- Step 4 :- Divide data on the basis of Sorces Location of Maharashtra Pollution Control Board (MPCB) Sensor in Pune
- Step 5 :- Use shiny app radio button feature to select diffrent source of data use that in loading that data on plot within app with the  help of server
- Step 6 :- Deploy it on internet



## Contents

#### App

- Data :- Data folder Contain cleanAQI data. Raw data had there are two formats of date and it need to be cleaned also I selected only AQI, Date, and Location columns.
- server.R & ui.R :- Necessary shiny App files which is server for user input processing and ui means user interface, showing Output from server.
- About.html :- html page of write up on the app about page

#### Code and Raw file

- Data :- It contain Raw data file we got from Kaggle
- Cleaning_Pune_AQI.R :- It contain code for cleaning data for ploting on app
- Average Aqi in pune (2009-2019).png :- plot of average AQI of all sensor based in pune (It show Sine wave)
- Decompose plot.jpeg :- just the image of decompose of average aqi  

#### Pitch 

- Pune AQI pitch.Rmd , html & pptx :- Markdown of pitch presentation in diffrent format


## Links
       
1. [Presentation Pitch](https://rpubs.com/RishikeshPillay/791792)
2. [Github Repo](https://github.com/Rishikesh0714/Pune-AQI-2009--2019)
3. [Data](https://www.kaggle.com/prathmeshn/pune-air-quality-index)
4. [Web App](https://rishikesh.shinyapps.io/Pune_Air_Quality_Index_AQI/)
