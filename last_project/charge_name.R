charge_type <- read.csv("charge_type.csv", header = TRUE, fileEncoding = "euc-kr")

charge_type

View(charge_type)

type <- charge_type[, 6]
type
head(type)
dim(type)
View(type)
