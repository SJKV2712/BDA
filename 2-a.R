#Design a logistic regression model for the ISLR dataset.
age <- c(10,20,30,60,70,80,35)  
survived <- c(0, 0, 0, 0, 1, 1,1)
model <- glm(survived ~ age, family = binomial)
predicted <- predict(model, type = "response")
plot(age, survived, pch = 19, col = "blue", ylim = c(0, 1), 
     xlab = "Age", ylab = "Survival Rate", 
     main = "Logistic Regression: Age vs. Survival Rate")
lines(sort(age), predicted[order(age)], col = "red", lwd = 2)
