#establish working environment
#setwd('~/R/devdataprod-015/course_project/')
library(shiny)

calcPoints <- function(protein, carbohydrates, fat, fiber, country){
  if(country=="US") {
   max(round(protein/10.9375 + carbohydrates/9.2105 + fat/3.8889 - fiber/12.5, 0))
  } else {
    max(round(protein/10.9375 + carbohydrates/9.2105 + fat/3.8889 + fiber/35, 0))
  }
}

function(input, output, session){
  
  currentPoints <- reactive({
    calcPoints(input$protein, input$carbs, input$fat, input$fiber, input$country)
  })
  output$points <- renderText({currentPoints()})
  output$name <- renderText(input$name)

}