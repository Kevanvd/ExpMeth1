# Alex's task 2 - CHAPTER 3 : the R environment 

method <- c(rep(1,10), rep(2,10))
method <- factor(method, levels = c(1,2), labels = c("Electric shock", "Being nice"))

gender <- c(rep(0,5), rep(1,5), rep(0,5), rep(1,5))
gender <- factor(gender, levels = c(0,1), labels = c("Male", "Female"))

mark <- c(15,14,20,13,13,6,7,5,4,8,10,9,8,8,7,12,10,7,8,13)

teaching_method <- data.frame(method, gender, mark)

# Alex's task 3 - CHAPTER 3 : the R environment 

gender2 <- c(rep(0,12), rep(1,12))
gender2 <- factor(gender2, levels = c(0,1), labels = c("Male", "Female"))

partner<-c(69,76,70,76,72,65,82,71,71,75,52,34,70,74,64,43,51,93,48,51,74,73,41,84)
self<-c(33,26,10,51,34,28,27,9,33,11,14,46,97,80,88,100,100,58,95,83,97,89,69,82)

infedility_data <- data.frame(gender2, partner, self)