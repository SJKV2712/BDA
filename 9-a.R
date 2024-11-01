#Design a logistic regression model for the ISLR dataset.
library(ISLR)
data("Default")
model <- glm(default ~ income + balance, data = Default, family = binomial)
summary(model)
plot(model)