library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Iris classification"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("Sepal.Length",
                  "Length of Sepal:",
                  min = 4.2,
                  max = 8,
                  value = 5),
      sliderInput("Sepal.Width",
                  "Width of Sepal:",
                  min = 2,
                  max = 5.5,
                  value = 3),
      sliderInput("Petal.Length",
                  "Length of Petal:",
                  min = 1,
                  max = 7.5,
                  value = 4),
      sliderInput("Petal.Width",
                  "Width of Petal:",
                  min = 0,
                  max = 2.5,
                  value = 1),
      submitButton('Submit')
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h3('Documentation:'),
      h5('This application used the iris data to build a classification tree model, \n
         users can input values of sepal and petal\n
         and the prediction of species will be output as followed.'),
      
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
      
    )
  )
))
