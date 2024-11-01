#A study was done in which the high daily temperature and 
#the number of traffic accidents within the city were recorded. Find the relation between Temp & Accident.
x <- c(91,56,75,68,50,39,98)
y <- c(7,4,9,6,3,5,10)
model <- lm(y ~ x)
summary(model)
plot(x, y)
abline(model, col = "red")
