# Load necessary library
library(ggplot2)

# Create a box plot for Wind Speed
p<-ggplot(airquality, aes(y = Wind)) +
  geom_boxplot(fill = "lightgreen", color = "black") 
print(p)