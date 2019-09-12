# Test 1 
metallicaNames <- c("Lars","James","Kirk","Rob")
metallicaAges <- c(47, 47, 48, 46)

metallica <- data.frame(Name = metallicaNames, Age = metallicaAges)

metallica$childAge <- c(12, 12, 4, 6)

# Test 2 : lecturers and students 
name <- c("Ben", "Martin", "Andy", "Paul", "Graham", "Carina", "Karina", "Doug", "Mark", "Zoe")
birth_date <- as.Date(c("1997-07-03", "1969-05-24", "1973-06-21", "1970-07-16",
                        "1949-10-10", "1983-11-05", "1987-10-08", "1989-09-16",
                        "1973-05-20", "1984-11-12"))
job <- c(rep(1,5), rep(2,5))
job <- factor(job, levels= c(1,2), labels = c("Lecturer", "Student"))
friends <- c(5,2,0,4,1,10,12,15,12,17)
alcohol <- c(10,15,20,5,30,25,20,16,17,18)
income <- c(20000,40000,35000,22000,50000,5000,100,3000,10000,10)
neuroticism <- c(10,17,14,13,21,7,13,9,14,13)

lecturerData <- data.frame(name, birth_date, job, friends, alcohol, income, neuroticism)

# write.csv(lecturerData, "Lecturer_Data.csv", row.names = FALSE)
# lecturerData2 <- read.csv("Lecturer_Data.csv", header = TRUE)

lecturerPersonality <- lecturerData[,c("friends", "alcohol", "neuroticism")]
lecturerOnly <- lecturerData[job == "Lecturer",]
alcoholPersonality <- lecturerData[alcohol > 10, c("friends", "alcohol", "neuroticism")]

# The long/molten format 
person <- c(1,2,3,4,5,6,7,8,9,10)
satisfaction_base <- c(6,7,4,6,6,5,6,2,10,10)
satisfaction_6_months <- c(6,7,6,9,7,10,6,5,9,10)
satisfaction_12_months <- c(5,8,2,4,6,4,4,4,5,10)
satisfaction_18_months <- c(2,4,2,1,6,2,2,NA,6,9)
gender <- c(0,1,1,0,0,1,0,0,0,0)

satisfaction_data <- data.frame(person, satisfaction_base, satisfaction_6_months, satisfaction_12_months, 
                                satisfaction_18_months, gender)

satisfaction_data_2 <- stack(satisfaction_data, select = c("satisfaction_base", "satisfaction_6_months", "satisfaction_12_months",
                                                           "satisfaction_18_months"))
                                                