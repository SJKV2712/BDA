P<-ggplot(airquality, aes(x = Temp)) +
  geom_histogram(binwidth = 2, fill = "lightblue", color = "black")
print(P)