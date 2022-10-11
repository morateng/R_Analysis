library(dplyr)


# 과제 1
insuranceDF <- read.csv("insuranceDF.csv", header = TRUE)
insuranceDF_column <- read.csv("insuranceDF_column.csv", header = TRUE)
insuranceDF_row <- read.csv("insuranceDF_row.csv", header = TRUE)

insuranceDF <- bind_cols(insuranceDF, insuranceDF_column)

print(insuranceDF)

insuranceDF <- bind_rows(insuranceDF, insuranceDF_row)

print(insuranceDF)

# 과제 2

insuranceDF$charges[is.na(insuranceDF$charges)] <- mean(insuranceDF$charges, na.rm = TRUE)
print(insuranceDF)
