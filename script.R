data(iris)
library(caret)
d=data(iris)
model=train(iris[,1:4],iris[,5], data=iris, method="rpart")
