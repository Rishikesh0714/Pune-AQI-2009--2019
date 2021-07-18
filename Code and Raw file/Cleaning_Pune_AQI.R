# Cleaning DATA for ploting Pune AQI

df <- readr::read_csv("Data/PNQ_AQI.csv")
library(lubridate)

a <- ydm_hms(df$Date) # Produces NA when format is not "ydm"

b <- dmy(df$Date) # Produces NA when format is not "dmy"

# sum of Na is 5917 + 1927 = 7844

a[is.na(a)] <- b[is.na(a)] 
df$Date <- a

# select
library(dplyr)
library(tidyr)
plt_data <- df %>% select(Date, AQI, Location)  %>% ts()

# plot
library(plotly)
plot_ly(data = plt_data, x = ~Date, y = ~ts(AQI), type = 'scatter', color = ~Location, mode = 'lines')

# plot
plot(decompose(na.StructTS(ts(data2$Average, frequency = 12))))
