library(shiny)
library(plotly)
ui <-
        fluidPage(
                titlePanel("Pune Air Quality Index AQI (2009 - 2019)"),
                
                sidebarLayout(sidebarPanel(
                        radioButtons(
                                'loc',
                                "Location of Maharashtra Pollution Control Board (MPCB) Sensor in Pune",
                                c(
                                        "MPCB-KR" = "MPCB.KR",
                                        "MPCB-NS" = "MPCB.NS",
                                        "MPCB-SWGT" = "MPCB.SWGT",
                                        "MPCB-BSRI" = "MPCB.BSRI",
                                        "Karve Road" = "Karve.Road",
                                        "Nal Stop" = "Nal.Stop",
                                        "Swargate" = "Swargate" ,
                                        "Bhosari" = "Bhosari" ,
                                        "Pimpri Chinchwad" = "Pimpri.Chinchwad",
                                        "Pimpri" = "Pimpri" ,
                                        "MPCB-PMPR" = "MPCB.PMPR"
                                ),
                                selected = "Swargate"
                                
                        )
                ),
                
                mainPanel(
                        tabsetPanel(
                                type = "tabs",
                                tabPanel("Plot", plotlyOutput("plot")),
                                tabPanel("Average_Plot", plotlyOutput('plot2')),
                                tabPanel("About", includeHTML("About.html"))
                        )
                ))
        )
