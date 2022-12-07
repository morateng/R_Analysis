
# 연습문제 2
data(trees)
plot(trees$Girth, trees$Height)
cor(trees$Girth, trees$Height)

head(trees)
pairs(trees$Girth, trees$Height, trees$Volume)
tree1 <- trees[, 1:3]
pairs(tree1)


# 연습문제 3

data(Orange)
head(Orange)

color <- c("red", "green", "blue", "purple", "black")
plot(Orange$age, Orange$circumference,
     col=color[Orange$Tree])
# 연습문제 4
model <- lm(trees$Volume ~ trees$Girth + trees$Height)

library(MASS)
stepAIC(model)
summary(model)

mod <- lm(Volume~Girth+Height,data= trees)
summary(mod)


library(mlbench)
