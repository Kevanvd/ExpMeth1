# Variables, vectors - Vector operation 

# Exercise 1
names <- c("Andreas", "Cecilie", "Marcus", "Thea", "Kevan")
siblings <- c(0,1,2,3,1)
siblings2 <- c(2,3,4,5,6)

df <- data.frame(name = names, sibling = siblings)
df$name <- as.character(df$name) 
df <- rbind(df, c("Katarina", 3))
df$gender <- c("Male", "Female", "Male", "Female", "Male", "Female")