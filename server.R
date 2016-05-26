library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$map <- renderPlot({
    #control the longitude, latitude, and zooming size.
    lonn<-input$lon
    latt<-input$lat
    zm<-input$zoom
    t<-input$month
    # draw the histogram with the specified number of bins
    m <- get_map(location = c(lon = lonn, lat = latt),
                 zoom = zm, language = "zh-TW")
    #judge which the input$month is and output the map of the month
    if(input$month == 1){
      ggmap(m)+geom_point(aes(x = l1, y = la1, alpha =  0.000000001,colour = "red"),data = lon.deg)
    
    }
    
    else if(input$month == 2){
      ggmap(m)+geom_point(aes(x = l2, y = la2, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 3){
      ggmap(m)+geom_point(aes(x = l3, y = la3, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 4){
      ggmap(m)+geom_point(aes(x = l4, y = la4, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 5){
      ggmap(m)+geom_point(aes(x = l5, y = la5, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 6){
      ggmap(m)+geom_point(aes(x = l6, y = la6, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 7){
      ggmap(m)+geom_point(aes(x = l7, y = la7, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 8){
      ggmap(m)+geom_point(aes(x = l8, y = la8, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 9){
      ggmap(m)+geom_point(aes(x = l9, y = la9, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 10){
      ggmap(m)+geom_point(aes(x = l10, y = la10, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    else if(input$month == 11){
      ggmap(m)+geom_point(aes(x = l11, y = la11, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    
    else if(input$month == 12){
      ggmap(m)+geom_point(aes(x = l12, y = la12, alpha =  0.000000001,colour = "red"),data = lon.deg)
      
    }
    else{
      ggmap(m)+geom_point(aes(x = lona, y = lata, alpha =  0.000000001,colour = "red"),data = lon.deg)
    }
  
  })
  
})