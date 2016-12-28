#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Grapher 2000 created 12.27.2016"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput("equation","Equation Y=...","x"),
      sliderInput("range","X-Axis Range:",min=0,max=1000,c(0,100))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h1("Graphs input equations for educational purposes."),
       h2("Instructions:"),
       p("Step 1:Input desired equation into the text box."),
       p("Step 2:Adjust slider to adjust the X-Axis Range. "),
       plotOutput("Plot")
    )
  )
))
