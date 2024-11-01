#Visualize maximum daily temperature using histogram.
library(ggplot2)
p<-ggplot(airquality, aes(x = Temp)) +  geom_histogram()
print(p)