# CHAPTER 4 : EXPlORING DATA WITH GRAPHS


# importation of the data 
facebook_data <- read.delim("FacebookNarcissism.dat", header = TRUE)

# creation of the plot object 
graph <- ggplot(facebook_data, aes(NPQC_R_Total, Rating))

# creation of the layers 
graph + geom_point(aes(colour = Rating_Type), shape = 17, position = "jitter")
graph + geom_point(aes(shape = Rating_Type), position = "jitter")

