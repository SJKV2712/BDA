
library(ggplot2)
airquality$Month <- factor(airquality$Month, levels = 5:9, labels = month.abb[5:9])
avg_ozone <- aggregate(Ozone ~ Month, data = airquality, FUN = mean, na.rm = TRUE)
p <- ggplot(avg_ozone, aes(x = Month, y = Ozone)) +
  geom_bar(stat = "identity", fill = "blue")
print(p)