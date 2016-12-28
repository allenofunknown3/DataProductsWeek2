#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#


library(shiny)

# Define server logic required to draw a graph
shinyServer(function(input, output) {
   
  output$Plot <- renderPlot({
    # draw the histogram with the specified number of bins
    ff <- as.function(alist(x=, eval(parse(text=input$equation))))
    curve(ff,input$range[1],input$range[2])
  })
  
})