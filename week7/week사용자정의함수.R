# 샘플 데이터 준비
populationDF <- read.csv("populationDF.csv", header = TRUE)
populationDF

#apply함수
apply(populationDF, 1, sum)  # 행(1)방향으로 더하기

apply(populationDF, 2, sum) # 열(2)방향으로 더하기

#사용자 정의 함수

mymax <- function(value1, value2){
  if(value1>value2){
    print("첫번째 입력값이 더 큽니다")
  }else if(value2 > value1){
    print("두번째 입력값이 더 큽니다")
  }else{
    print("두 값의 크기가 동일해서 반환할 값이 없습니다")
  }
}

mymax(2, 5)

presetFunc <- function(value1=1, value2=2){
  print(value1)
  print(value2)
}

presetFunc()


