#Visualize average wind speed using boxplot and multiple boxplot for all air quality parameters.
library(ggplot2)
p<-ggplot(airquality, aes(y = Wind)) +
  geom_boxplot(fill = "lightgreen", color = "black") 
print(p)
