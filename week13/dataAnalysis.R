install.packages("readxl")
library(readxl)

xlsdata <- read_excel("C:/Users/morat/R_Analysis/week13/corona.xls")

View(xlsdata)

data_raw <- xlsdata[,c(2:4)]
head(data_raw)

names(data_raw)
names(data_raw) <- c("state", "city", "name")
names(data_raw)

loc <- table(data_raw$state)    # table(): 변수 빈도
barplot(loc)

library(ggplot2)
ggplot(data=data_raw, aes(x = state)) + geom_bar(stat = "count", width = 0.5, fill = 259)
