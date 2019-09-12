# Variables, vectors - Vector operation 

# Exercise 1
names <- c("Andreas", "Cecilie", "Marcus", "Thea", "Kevan")
siblings <- c(0,1,2,3,1)

df <- data.frame(name = names, sibling = siblings)
df$name <- as.character(df$name) 
#df <- rbind(df, c("Katarina", 3))

#a <- c(1,2,3,4,5)
#b <- c("Kevan", "Alicia", "Candice")


# Exercise 2 
# Using the same vectors and dataframe as in exo 1
df$gender <- c("Male", "Female", "Male", "Female", "Male")

# adding a new person to df
df <- rbind(df, c("Katarina", 2, "Female"))

# mean number of siblings
df$sibling <- as.numeric(df$sibling)
mean_siblings <- mean.default(df$sibling)

# actual number of siblings
df$real_sibling <- c(4,1,1,2,1,2)

# create a column to show how much "off" you were 
df$off <- df$sibling - df$real_sibling


# Exercise 3
# selecting people who have 3 siblings 
one_sibling <- subset(df, subset = df$real_sibling==1, select = c("name", "gender"))
three_sibling <- subset(df, subset = df$real_sibling==3, select = c("name", "gender"))
two_sibling <- subset(df, df$real_sibling==2, select = c("name", "gender"))
# Nobody has 3 siblings 

# selecting people who have more than 2 siblings
more_2_sibling <- subset(df, subset = df$real_sibling > 2, select = c("name", "gender"))

# creating a subset of the data containing the right guesses
right_guess <- subset(df, subset = df$off ==0, select = c("name", "gender", "sibling", "real_sibling"))

# 