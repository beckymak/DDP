library(shiny)
library(datasets)
library(rpart)

d2=iris

shinyServer(function(input, output) {
  
  fit = rpart(Species~., method="class", data=d2)
  species=levels(d2$Species)
  inputValue = reactive({
    input = data.frame(input$Sepal.Length, input$Sepal.Width, input$Petal.Length, input$Petal.Width)
    names(input)= c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width")
    
    input
  })
  
  prediction = reactive({
    pred = predict(fit, inputValue())
    predName = species[which.max(pred)]
    predName
  })

  output$inputValue = renderPrint({inputValue()})
  output$prediction = renderPrint({prediction()})

})
