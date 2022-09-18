v1 <- c(1, 2, 3)

v1

Y <- c(1,2,3, "a", "b", "c")
Y  # 자동으로 문자형으로 형변환 벡터는 한가지 자료형만 가능

vec <- c("hello", "world", "bigdata")
typeof(vec)


vec <- c("pi", 3.14, TRUE)
typeof(vec) 

# 벡터 연산
a <- c(1, 2, 3)
b <- c(2, 3, 4)
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a %% b)

# 벡터 Recycling
a <- c(2, 3, 4, 5)
b <- c(8, 9)
a + b

a <- c(8, 10, 12, 14, 16)
b <- c(2)
a / b

# 벡터 적용 가능한 함수

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
mean(d)
max(d)
min(d)
length(d)
median(d)

# 콜론(:), seq() 로 벡터 생성

v <- c(5:10)
v
k <- seq(1, 5, 1)
k

# rep(반복대상값, 반복횟수)

v1 <- rep(1, 5)
v1

# round(대상 값 반올림)

vec <- c(1.1, 2.1, 3.1)
round(vec)

vec <- c(1.53, 3.15, 3.28, 4.49)
rep(vec, 2)
seq(1, 10, by = 2)
round(vec)

# 벡터 인덱싱

indexVec <- c(2, 3, 4, 5)
indexVec[1]
indexVec[3]

indexVec[1:3]
indexVec[3:1]

indexVec[indexVec < 4]


