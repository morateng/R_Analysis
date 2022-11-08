
print(mtcars)
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg)


data(mtcars)
wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg,
     main = "중량-연비 산점도",
     xlab = "중량(wt)",
     ylab = "연비(mpg)",
     col = "red",
     pch = 19)


vars <- c("mpg", "disp", "drat", "wt")
target<-mtcars[,vars]
head(target)
pairs(target, main="Multi Plots")

# 실습

print(USArrests)

vars <- c("UrbanPop", "Murder", "Assault")
target <- USArrests[,vars]
pairs(target)

# ------

beers <- c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
bal <- c(0.1, 0.03, 0.19, 0.12, 0.04, 0.095, 0.07, 0.06, 0.02, 0.05)
ca <- data.frame(beers, bal)
print(ca)
plot(bal~beers, data = ca)

camodel <- lm(bal~beers, data = ca)  # 선형회귀
abline(camodel)

cor(beers, bal)   # 상관계수 default는 person상관계수

#---------

month <- 1:12
cold1 <- c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
cold2 <- c(4, 6, 5, 8, 7, 8, 10, 11, 6, 5, 7, 3)
plot(month,
     cold1,
     main = "감기 환자 통계",
     type = "b",
     lty = 1,
     lwd = 2,
     xlab = "month",
     ylab = "cold patients",
     ylim = c(1,15)
     )

lines(month,
      cold2,
      type="b",
      col="blue")
