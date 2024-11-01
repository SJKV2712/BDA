#Find the relation between temperature and heaters sold.
x <- c(-5, -7, 5, 10, 18, 22, 28, 25, 16, 10, 2, -3)
y <- c(98, 100, 75, 67, 24, 26, 25, 27, 40, 55, 88, 95)
model <- lm(y ~ x)
summary(model)
plot(x, y)
abline(model, col = "red")
