#Perform linear regression to find the relation between following attributes 
#BMI and height
#Height and Weight
#Weight and BMI
bmi <- c(20.5,21,22,23.5)
height <- c(120,125,130,135)
model <- lm(height ~ bmi)
summary(model)
plot(bmi, height)
abline(model, col = "red")

