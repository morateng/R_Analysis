library(dplyr)

# 기초 데이터 프레임
patientDF <- read.csv("patientDF.csv", header = TRUE, fileEncoding = "CP949")
# 행 결합 데이터 프레임
patientDF_row <- read.csv("patientDF_row.csv", header = TRUE, fileEncoding = "CP949")
# 열 결합 데이터 프레임
patientDF_col <- read.csv("patientDF_col.csv", header = TRUE, fileEncoding = "CP949")

patientDF

rename(patientDF, gender = jender)

filter(patientDF, weight >= 55)

select(patientDF, weight, height)

mutate(patientDF, BMI = weight/(height/100)^2)

arrange(patientDF, weight)

arrange(patientDF, desc(height))

summarise(patientDF, wei_mean = mean(weight), hei_min = min(height))

bind_rows(patientDF, patientDF_row)

bind_cols(patientDF, patientDF_col)

# 결측값

missingTable <- read.csv("missingData.csv", header = TRUE)

is.na(missingTable)

missingTable

table(is.na(missingTable))

table(is.na(missingTable$gpa))

mean(missingTable$gpa) # NA로 나온다

mean(missingTable$gpa, na.rm = TRUE) # 결측값 제외한 mean을 추출

print(missingTable)

print(na.omit(missingTable))  # 결측값을 포합한 행 전체를 제거하고 계산

missingTable[is.na(missingTable)] <- 0  # 결측값을 0으로 대체
print(missingTable)

missingTable1 <- read.csv("missingData.csv", header = TRUE)

missingTable1$gpa[is.na(missingTable1$gpa)] <- mean(missingTable1$gpa, na.rm = TRUE) # 평균으로 결측값 대체

print(missingTable1)





