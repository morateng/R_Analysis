i <- 3

print(i)

a <- 10/3
b <- 10%%4
c <- 10%/%2
print(a)
print(b)
print(c)

weight <- 68
height <- 1.7 
print(weight/height**2)

int <- 2L
print(int)

print(int**2)

name <- "강재훈"
print(name)

print(1+2!=4)

print(typeof(name))

vac <- c(1, 2, 3)
print(vac)

binda <- c(1, 2, 3, 4)
bindb <- c(5, 7, 8)

matrix <- rbind(binda, bindb)
print(matrix)

vec <- c("hello", "world", "bigdata")
typeof(vec)


class(vec)

vec <- c("pi", 3.14, TRUE)
typeof(vec)

a<-c(1,2,3)
b<-c(4,5,6)
print(a+b)

a <- c(8, 10, 12, 14, 16)
b <- c(2)
print(a/b)

sum(a)
mean(a)
median(a)
max(a)
min(a)
var(a)
sd(a)
range(a)
range(b)
length((a))

col <- c(1:5)
print(col)

seq(1,5,2)
rep(a,2)

vec <- c(1.53, 3.15, 3.28, 4.49)
round(vec)
vec[1]
vec[1:2]
vec[3:1]
vec[vec>2]

score <- c(70, 80, 56)
names(score) <- c("재훈", "세희", "환수")
print(score)

d <- 101:200
print(d)
d[100:91]
d[d%%2 == 0]
d20 <- d[1:20]
print(d20)
print(d20[d20 != 105])
d20[d20 != 105 & d20 != 107 & d20 != 109]

recipe <- c("햄", "소시지", "라면", "떡", "만두", "양배추")
recipe[3]
recipe[1:5]
a <- recipe[1:5]
length(a)

patName <- c("김상명","조세빈","이준표")
patBMI <- c(19.1,21.5,23)
patDF <- data.frame(patName,patBMI)
print(patDF)

patDF_name <- patDF$patName
print(patDF_name)
patDF[1,1]
patDF[3,2]

