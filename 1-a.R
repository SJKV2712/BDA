# Data
bmi <- c(20.5, 21, 22, 23.5)
height <- c(120, 125, 130, 135)
weight <- c(50, 55, 60, 65)  # Sample weight data to use in the models

# 1. Linear Regression: BMI and Height
model_bmi_height <- lm(height ~ bmi)
summary(model_bmi_height)
plot(bmi, height, main = "BMI vs Height", xlab = "BMI", ylab = "Height", pch = 19)
abline(model_bmi_height, col = "red")

# 2. Linear Regression: Height and Weight
model_height_weight <- lm(height ~ weight)
summary(model_height_weight)
plot(weight, height, main = "Weight vs Height", xlab = "Weight", ylab = "Height", pch = 19)
abline(model_height_weight, col = "blue")

# 3. Linear Regression: Weight and BMI
model_weight_bmi <- lm(bmi ~ weight)
summary(model_weight_bmi)
plot(weight, bmi, main = "Weight vs BMI", xlab = "Weight", ylab = "BMI", pch = 19)
abline(model_weight_bmi, col = "green")
