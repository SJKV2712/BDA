library(ggplot2)
p<-ggplot(airquality, aes(y = Wind)) +
  geom_boxplot(fill = "lightgreen", color = "black") 
print(p)
