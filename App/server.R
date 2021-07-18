
library(shiny)
library(plotly)
library(dplyr)
library(RColorBrewer)
server <- function(input, output, session) {
    # Reactive expression to generate the requested distribution ----
    # This is called whenever the inputs change. The output functions
    # defined below then use the value computed from this expression
    data <- read.csv("Data/Clean_AQI.csv")
    data$Date <- as.Date(data$Date)
    data$Location <- make.names(data$Location)
    
    
    
    fill <- renderText({
        input$loc
    })
    
    filteredData <- reactive({
        data %>% filter(Location == as.character(unclass(fill())))
    })
    
    # Generate a plot of the data ----
    # Also uses the inputs to build the plot label. 
    output$plot <- renderPlotly({
        g <- plot_ly(
            filteredData(),
            x = ~ Date,
            y = ~ AQI,
            type = 'scatter',
            mode = 'lines',
            color = "#D9077E"
            )
        
        
        g %>% layout(title = 'Air Quality Index(AQI) at diffrent Location in Pune') 
        
    })
    
    # Average Panel
    data2 <-
        data %>% group_by(Date) %>% summarise(Average = mean(AQI))
    
    output$plot2 <- renderPlotly({
        p <-  plot_ly(
            data2,
            x = ~ Date,
            y = ~ ts(Average),
            type = 'scatter',
            mode = 'lines'
        )
        p %>%  layout(title = "Average Air Quality Index in Pune" ,
                      yaxis = list(title = "Average AQI"))
    })
    
    
}