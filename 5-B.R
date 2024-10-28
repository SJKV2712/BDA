library(ggplot2)
p <-ggplot(airquality, aes(x = factor(Month), y = Ozone)) +
  geom_point(color = "blue")
print(p)