# readLine()
testTXT <- readLines("5주차-샘플데이터/testFile.txt", encoding = "UTF-8")
testTXT

# read.table()

readTableComma <- read.table("5주차-샘플데이터/readTable_comma.txt", sep = ",", header = TRUE, encoding = "ANSI", fileEncoding = "euc-kr")
print(readTableComma)

# read.csv()

scoreSample <- read.csv("5주차-샘플데이터/scoreSample.csv", header = TRUE)
print(scoreSample)

# 실습

covid <- read.table("5주차-샘플데이터/covidSample.txt", sep = " ", header = TRUE, encoding = "ANSI", fileEncoding = "euc-kr")
print(covid)

# 데이터 파악

employeeTable <- read.csv("5주차-샘플데이터/employeeSample.csv", header = TRUE)

head(employeeTable, 5)
tail(employeeTable)

View(employeeTable)

dim(employeeTable)

str(employeeTable)

summary(employeeTable)
