library(treemap)
data("GNI2014")
head(GNI2014)

treemap(GNI2014,
        index = c("continent", "iso3"), #계층구조 설정
        vSize = "population", #타일 크기
        vColor = "GNI", #타일 색상
        type = "value", #타일 컬러링 방법
        title = "세계 GNI") #트리맵 제목


# 실습 1
library(treemap)
data(mtcars)
mtcars$name <- rownames(mtcars)
treemap(mtcars,
        index = "name",
        vSize = "hp",
        vColor = "mpg",
        type = "value")


head(state.x77)

state <- data.frame(state.x77)
symbols(state$Illiteracy, state$Murder,
        circles = state$Population)


state <- data.frame(state.x77) #매트릭스 -> 데이터프레임 변환
symbols(state$Illiteracy, state$Murder, #원의 x, y 좌표의 열
        circles = state$Population, #원의 반지름 열
        inches = 0.3, #원의 크기 조절 값
        fg = "white", #원의 테두리 색
        bg = "lightgray", #원의 바탕색
        lwd = 1.5, #원의 테두리 두께
        xlab = "문맹률", #x축 범례
        ylab = "살인율", #y축 범례
        main = "문맹률과 살인율 버블차트") #버블차트 제목
text(state$Illiteracy, state$Murder, #텍스트가 출력될 x, y 좌표
     rownames(state), #출력할 텍스트
     cex = 0.6, #폰트 크기
     col = "brown") #폰트 컬러

# 실습 2

state <- data.frame(state.x77) 
symbols(state$Income, state$Life.Exp, 
        circles = state$Population, 
        inches = 0.4, 
        fg = "white", 
        bg = "lightgray", 
        lwd = 1.5,
        xlab = "소득", 
        ylab = "기대수명",
        main = "소득과 기대수명 버블차트")
text(state$Income, state$Life.Exp,
     rownames(state),
     cex = 0.6,
     col = "brown")


# ----

data(mtcars)

mosaicplot(~gear+vs,
           data = mtcars)
head(mtcars)

mosaicplot(~gear+vs,
           data = mtcars,
           color = TRUE,     # 진하게
           main = "Gear & Vs")

# 실습 3

data(mtcars)
mosaicplot(~gear+am,
           data = mtcars,
           color = TRUE,
           main = "Gear & Transmission")
# --------

library(ggplot2)
month <- c(1, 2, 3, 4, 5, 6)
weight <- c(40, 48, 47, 45, 43, 39)
df <- data.frame(month, weight)

ggplot(data=df, aes(x = month, y = weight)) + geom_bar(stat = "identity", width = 0.8, fill = "steelblue")
#막대 높이, 막대 폭, 막대 색상 지정하여 그래프 생성


head(Orange)

ggplot(data = Orange, aes(x = age, y = circumference)) + geom_line(aes(color = Tree), linetype = 5, size = 3)

# 실습 4
data(Loblolly)
head(Loblolly)
ggplot(data = Loblolly, aes(x = age, y = height)) + geom_line(aes(color = Seed), linetype = 1, size =1)



# 산점도
data(mtcars)
library(ggplot2)
ggplot(data = mtcars, aes(x = hp, y = mpg)) + geom_point(aes(color = as.factor(vs)))

# 실습 5
library(ggplot2)
data(diamonds)
diamonds <- head(diamonds, 100)
ggplot(data=diamonds, aes(x = carat, y = price)) + geom_point(aes(color = as.factor(cut)))
#-----

# 상자 그래프

ggplot(data = mtcars, aes(y = hp)) + geom_boxplot(aes(fill = as.factor(cyl)))
