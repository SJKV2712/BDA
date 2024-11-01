#Find the relationship between the number of years as 
#sales representative in a company and their average monthly sales (in thousands of dollars).
x <- c(2,3,10,7,8,15,3,1,11)
y <- c(38,41,86,70,73,69,56,63,128)
model <- lm(y ~ x)
summary(model)
plot(x, y)
abline(model, col = "red")
