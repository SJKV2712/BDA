# Input paragraph
paragraph <- "A Horse and an Ass were travelling together. 
The Horse prancing along in its fine tapping’s. 
The Ass carrying with difficulty the heavy weight in its panniers."

# Map function
map_function <- function(text) {
  words <- unlist(strsplit(tolower(text), "\\W+"))
  words <- words[words != ""]  # Remove any empty strings
  return(table(words))
}

# Reduce function
reduce_function <- function(mapped_data) {
  reduced_counts <- Reduce(`+`, mapped_data)
  return(reduced_counts)
}

# Map and Reduce phases
mapped_data <- list(map_function(paragraph))
word_count_result <- reduce_function(mapped_data)

# Print results
print(word_count_result)
