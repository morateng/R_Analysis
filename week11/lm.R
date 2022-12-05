data(mtcars)
head(mtcars)
plot(mpg~wt, data = mtcars)

linearregression <- lm(mpg~wt, data = mtcars)
coef(linearregression)[1]
abline(mtcars$wt, mtcars$mpg)
abline(linearregression)

b <- coef(linearregression)[1]
w <- coef(linearregression)[2]

equation <- w*2.7 + b
print(equation)git

summary(linearregression)
