text <- "A Horse and an Ass were travelling together. The Horse prancing along in its fine tapping’s. The Ass carrying with difficulty the heavy weight in its panniers."
words <- tolower(unlist(strsplit(text, "\\W+"))) 
word_count <- table(words)
print(word_count)
