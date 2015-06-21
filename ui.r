#establish working environment
#setwd('~/R/devdataprod-015/course_project/')
library(shiny)

fluidPage(
  titlePanel(title="Weight Watchers PointsPlus/ProPoints Calculator"),
  
  helpText(
    p("Enter the name of your food and its corresponding values from your food item's nutrition label. Note that all nutritional values must be in grams. When you have entered in all values, click the 'Calculate Point Total' button to display the point value for your food item. For example, given the following food label,"),
    img(src="nutrition_label.jpg"),
    p("you would enter 13 for its fat value, 31 for its carbohydrate value, 3 for its fiber value and 5 for its protein value.  It is a US label, so you would also select United States as its label type. Clicking on the Calculate Point Total button will give a point value of 7 points.")
  ),
  br(),
  
  inputPanel(
    textInput(inputId="name",
              label="Enter name of food."
    ),
    
    selectInput(inputId="country",
                label="US or UK label?",
                choices=c("United Kingdom"="UK",
                          "United States"="US")
    ),
    
    numericInput(inputId="fat",
                 label="Enter fat content (g)",
                 value=0,
                 min=0
    ),
    numericInput(inputId="carbs",
                 label="Carbohydrate content (g)",
                 value=0,
                 min=0
    ),
    numericInput(inputId="fiber",
                 label="Enter fiber content (g)",
                 value=0,
                 min=0
    ),
    numericInput(inputId="protein", 
                 label="Enter protein content (g)",
                 value=0,
                 min=0
    )
  ),
  
  submitButton(text="Calculate Point Total"),
  br(),
  
  h3("The PointsPlus point value for ",
     textOutput("name", inline=TRUE),
     " is ",
     textOutput("points",inline=TRUE),
     "points."
  )
)