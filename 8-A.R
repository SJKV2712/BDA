library(e1071)
age <- c(22, 24, 30, 35, 45, 50, 60, 65)
survived <- as.factor(c(0, 0, 0, 1, 1, 0, 1, 0))
model <- svm(survived ~ age, kernel = "linear")
predictions <- predict(model, data.frame(age = age))
plot(age, as.numeric(survived), pch = 19, col = "blue", 
     xlab = "Age", ylab = "Survival", main = "SVM Predicted Survival")
points(age, as.numeric(predictions), pch = 4, col = "red")
