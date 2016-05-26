library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Dengue Fever area!"),
  
  # Sidebar with a slider input
  sidebarLayout(
    sidebarPanel(
      sliderInput("lon",
                  "Number of longitude:",
                  min = 120.00,
                  max = 121,
                  value = 120.2),
      sliderInput("lat",
                  "Number of latitude:",
                  min = 22.50,
                  max = 23.5,
                  value = 23.0),
      sliderInput("zoom",
                  "Zooming:",
                  min = 1,
                  max = 20,
                  value = 11)
    ,
    sliderInput("month",
                "month :",
                min = 1,
                max = 13,
                value = 8)
  ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("map")
    )
  )
))