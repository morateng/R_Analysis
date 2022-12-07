charge_station <- read.csv("charging_station.csv", header = TRUE)
print(charge_station)
head(charge_station)
View(charge_station)
dim(charge_station)
str(charge_station)
summary(charge_station)

electric_car <- read.csv("electric_car.csv", header = TRUE)
print(electric_car)
head(electric_car)
View(electric_car)
dim(electric_car)
str(electric_car)
summary(electric_car)



library(dplyr)
is.na(charge_station)
is.na(electric_car)


# 두 데이터프레임을 하나로 합치기

electric_car <- t(electric_car)
head(electric_car)
electric_car[, 1]
View(electric_car)

str(electric_car)
head(electric_car, 3)
head(charge_station)



dim(electric_car)
electric_car <- t(electric_car)
names(electric_car) <- c("X2022_3","X2022_2","X2022_1","X2021_12","X2021_11","X2021_10","X2021_9","X2021_8","X2021_7","X2021_6","X2021_5","X2021_4","X2021_3","X2021_2","X2021_1","X2020_12","X2020_11",
                        "X2020_10","X2020_9","X2020_8","X2020_7","X2020_6","X2020_5","X2020_4","X2020_3","X2020_2","X2020_1","X2019_12","X2019_10","X2019_9","X2019_8","X2019_7",
                        "X2019_6","X2019_5","X2019_4","X2019_3","X2019_2","X2019_1")

electric_car<-electric_car[-1,]    # 가장 위의 행 삭제
electric_car

head(electric_car)
View(electric_car)

electric_car[, "X2021"] <- c(41140,12942,40239,8042,8184,10015,7675,1879,11269,16169,7389,8837,5204,12725,12501,3180,25580,232970)

sum2021 <- data.frame(X2021 =c(41140,12942,40239,8042,8184,10015,7675,1879,11269,16169,7389,8837,5204,12725,12501,3180,25580,232970))
sum2021

electric_car <- cbind(electric_car, sum2021)
electric_car
head(electric_car)
View(electric_car)

electric_car1 <- read.csv("electric_car.csv", header = TRUE)
electric_car1 <- t(electric_car1)
View(electric_car1)
names(electric_car1) <- c("X2022_3","X2022_2","X2022_1","X2021_12","X2021_11","X2021_10","X2021_9","X2021_8","X2021_7","X2021_6","X2021_5","X2021_4","X2021_3","X2021_2","X2021_1","X2020_12","X2020_11",
                         "X2020_10","X2020_9","X2020_8","X2020_7","X2020_6","X2020_5","X2020_4","X2020_3","X2020_2","X2020_1","X2019_12","X2019_10","X2019_9","X2019_8","X2019_7",
                         "X2019_6","X2019_5","X2019_4","X2019_3","X2019_2","X2019_1")
electric_car1
View(electric_car1)
head(electric_car1)
sum2021

electric_car2 <- cbind(electric_car1, sum2021)
View(sum2021)

electric_car1 <- electric_car1[-1, ]
electric_car2 <- cbind(electric_car1, sum2021)
electric_car2
View(electric_car2)

sum2020 <- data.frame(X2020 = c(23441,5428,20670,4076,3897,5562,4463,1157,7066,12557,3360,5251,3210,6369,5409,2269,21206,135391))

electric_car3 <- cbind(electric_car2, sum2020)
View(electric_car3)

sum2019 <- data.frame(X2019 = c(15353,2660,11809,2448,2427,2848,2618,911,4071,11274,1872,3326,2479,3634,3223,1441,18307,90701
))

electric_car_years <- cbind(electric_car3, sum2019)

electric_car_years
View(electric_car_years)

electric_car_years <- electric_car_years[, -c(1:38)]
electric_car_years

electric_car[,c(3,2,1)]

electric_car_years<-electric_car_years[, c(3,2,1)]

electric_car_years
View(electric_car_years)


charge_station <- read.csv("charging_station.csv", header = TRUE)
charge_station
View(charge_station)
charge_station <- charge_station[, -c(2:4)]
charge_station
View(charge_station)


charge_station[18, ] <- c("합계", 3282, 3882, 4095)
charge_station
View(charge_station)

result <- bind_cols(electric_car_years, charge_station)
result
View(result)
head(result)
View(result)

charge_station<-charge_station[c(9,12,2,1,17,16,7,10,4,6,14,13,5,3,8,11,15,18), ]

View(charge_station)

result <- bind_cols(electric_car_years, charge_station)
result
result <- result[, -4]
result

result <- rename(result, X2019_cars = X2019...1)
result <- rename(result, X2020_cars = X2020...2)
result
result <- rename(result, X2021_cars = X2021...3)
result <- rename(result, X2019_charge = X2019...5)
result <- rename(result, X2020_charge = X2020...6)
result <- rename(result, X2021_charge = X2021...7)
result



electric_car_years <- rename(electric_car_years, X2019_cars = X_2019_cars)
electric_car_years <- rename(electric_car_years, X2020_cars = X_2020_cars)
electric_car_years <- rename(electric_car_years, X2021_cars = X2021)

charge_station <- rename(charge_station, X2019_charge = X2019)
charge_station <- rename(charge_station, X2020_charge = X2020)
charge_station <- rename(charge_station, X2021_charge = X2021)



summary(result)

# 선 그래프
electric_car_years
charge_station


years <- c(2019,2020,2021)
plot(result$X2019_cars)
barplot(result[, 1],
        result$X2019_cars)
result[,1]

real_result <- bind_cols(charge_station, electric_car)
real_result
View(real_result)   # real_result는 버리기로하자

result

region <- c("서울","인천","경기","강원","충북","충남","대전","세종","경북","대구","전북","전남","광주","경남","부산",
            "울산","제주","합계")

barplot(result[1:17, 1], names = c("서울","인천","경기","강원","충북","충남","대전","세종","경북","대구","전북","전남",     
                                     "광주","경남","부산","울산","제주"),                            # 2019전기차 대수 barplot
        main = "2019전국 전기차대수")
barplot(result[1:17, 3], names = c("서울","인천","경기","강원","충북","충남","대전","세종","경북","대구","전북","전남",
                                     "광주","경남","부산","울산","제주"),                           # 2021 전기차 대수 barplot
        main = "2021전국 전기차대수")


str(result)

transform(result, X2019_charge = as.numeric(X2019_charge))
str(result)
# 충전소 데이터가 문자형이라서 숫자형으로 다 바꿔준다
result["X2019_charge"] = c(546, 137, 699, 165, 162, 109, 105, 61, 190, 227, 147, 169, 85, 255, 124, 45, 202, 3282)
str(result)
result["X2020_charge"] = c(584, 153, 760, 185, 186, 144, 115, 64, 258, 242, 165, 181, 100, 362, 133, 48, 202, 3882)
result["X2021_charge"] = c(605,164,805,202,189,169,120,64,264,248,180,195,102,370,145,50,223,4095)
str(result)
barplot(result[1:17, 6], names = c("서울","인천","경기","강원","충북","충남","대전","세종","경북","대구","전북","전남",
                                       "광주","경남","부산","울산","제주"),
        main = "2021전국 충전소 개수")                    # 2021 전국 충전소 개수 barplot


korea_cars <- result[18, 1:3]
korea_cars
plot(years,
     korea_cars,
     main = "전기차 합계 추이",
     type = "b",
     lwd=1,
     col="red")
View(korea_cars)


korea_charges <- result[18, 4:6]
plot(years,
     korea_charges,
     main = "충전소 합계 추이",
     type = "b",
     lwd = 1,
     col="blue")

View(korea_charges)

# 선형회귀로 2022 전기차 대수 예측
korea_cars <- t(korea_cars)

model_years <- data.frame(years)
korea_cars <- bind_cols(korea_cars, model_years)
cars_model <- lm(합계~years, data = korea_cars)

w <- coef(cars_model)[2]
b <- coef(cars_model)[1]

X2022_cars <- w*2022+b
print(X2022_cars)

# 선형회귀로 2022 충전소수 예측
korea_charges <- t(korea_charges)
korea_charges <- bind_cols(korea_charges, model_years)
charge_model <- lm(합계~years, data = korea_charges)

w1 <- coef(charge_model)[2]
b1 <- coef(charge_model)[1]

X2022_charges <- w1*2022 + b1
print(X2022_charges)



# result 데이터프레임에 충전소/전기차대수 열 추가

result<-mutate(result, 전기차충전소비율 = X2021_charge/X2021_cars)
result

View(result)

barplot(result$전기차충전소비율, names = c("서울","인천","경기","강원","충북","충남","대전","세종","경북","대구","전북","전남",
                                   "광주","경남","부산","울산","제주","합계"),
        main = "전국 충전소개수/전기차대수 비율")


# 트리맵 그리기
library(treemap)
treemap1 <- result[1:17, ]
View(treemap1)
index <- c("서울","인천","경기","강원","충북","충남","대전","세종","경북","대구","전북","전남",
           "광주","경남","부산","울산","제주")
index <- data.frame(index)

treemap1<- bind_cols(treemap1, index)
View(treemap1)

treemap(treemap1,
        index = c("index"),
        vSize = "X2021_cars",
        vColor = "X2021_charge",
        type = "value",
        title = "2021전국 전기차대수, 충전소 treemap")

