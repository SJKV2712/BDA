library(ISLR)
str(Default)
model <- glm(default ~ income + balance + student)
summary(model)