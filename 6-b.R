# Load necessary libraries
library(maps)
library(mapdata)

# Create a world map
map("world", fill = TRUE, col = "lightblue", bg = "white", 
    lwd = 0.5, border = "gray")

# Add title
title("World Map")

# Optional: Add points for major cities
cities <- data.frame(
  city = c("New York", "London", "Tokyo", "Sydney", "Cairo"),
  lat = c(40.7128, 51.5074, 35.6762, -33.8688, 30.0444),
  long = c(-74.0060, -0.1278, 139.6503, 151.2093, 31.2357)
)

# Plot cities on the map
points(cities$long, cities$lat, col = "red", pch = 19)

# Add city names
text(cities$long, cities$lat, labels = cities$city, pos = 3, cex = 0.8, col = "black")
