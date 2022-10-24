x <- 5

if(x > 3){
  print("OK")
}

x <- 7

if(x>5){
  print("good")
}else{
  print("soso")
}


x <- 9

if(x>10){
  print("A")
}else if(x>5){   # x가 10보다 크지 않고 5보다 큰것
  print("AB")
}else{
  print("B")
}

applePrice <- 5800

if(applePrice < 5000){
  print("가격이 5000원보다 저렴하니까 사야겠다!")
}else{
  print("가격이 너무 비싸네... 사지 말아야지!")
}

if(applePrice < 5000){
  print("가격이 5000원 보다 저렴하니까 사야겠다!")
}else if(applePrice < 6000){
  print("조금 비싸더라고 사볼까?")
}else{
  print("가격이 너무 비싸네 사지 말아야지 !")
}


applePrice <- 5800
pearPrice <- 4000

if (applePrice < 5000 & pearPrice <5000) {
  print("사과랑 배 모두 저렴하니까 사야겠다 !")
}else if(applePrice >= 5000 & pearPrice >= 5000){
  print("너무 비싸!")
}else{
  print("둘중 하나만 사야겠다..")
}

score <- 85
ifelse(score >= 80, "a", "b")


score <- c(78, 95, 85, 65)
ifelse(score >= 80, "우수", "노력")
