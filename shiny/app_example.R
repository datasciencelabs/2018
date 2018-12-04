# Here are the assessment templates for each of the assessments we will perform today

# Assessment 1
library(shiny)
ui <- fluidPage(
  # Put code here for a slider with n as the id,
  # 'This is a slider' as the label, and {value, min, max} = {1, 0, 100}
)
server <- function(input,output){ }
shinyApp(ui=ui,server=server)


# Assessment 2
library(shiny)
ui <- fluidPage(
  # Place code here
  # hint you need a 'numericInput' with labelId = n
  # hint you also need to 'plot' the 'Output'
)
server <- function(input,output){
  
  output$hist <- renderPlot({
    hist(rnorm(input$n))
  })
  
}
shinyApp(ui=ui,server=server)

# Assessment 3
library(shiny)
ui <- fluidPage(
  plotOutput("plot")
)
server <- function(input,output){
  # place code here to render a plot of the iris dataset
  # hint: plot(iris) and ?renderPlot
}

shinyApp(ui=ui,server=server)

# Assessment 4
library(shiny)
ui <- fluidPage(
  selectInput("dataset","Which dataset?",choices=c("iris","cars")),
  plotOutput("plot")
)
server <- function(input,output){
  # place code here to create a 'dat' reactive function
  output$plot <- renderPlot({
    plot(dat())
  })
}
shinyApp(ui=ui,server=server)


# Assessment 5
library(shiny)
ui <- fluidPage( 
  tabsetPanel(
    # put code here
  )
)
server <- function(input,output){
  
  output$hist <- renderPlot({
    hist(rnorm(input$n))
  })
}

shinyApp(ui=ui,server=server)
