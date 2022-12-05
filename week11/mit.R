mit <- read.csv("binary.csv", header = TRUE)
mit
head(mit)

columns <- c("gre","gpa","rank")
data <- mit[, columns]
data

result <- glm(admit~gre+gpa+rank, data=mit)
summary(result)
