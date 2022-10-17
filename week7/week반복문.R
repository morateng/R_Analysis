
for (i in 1:5) {  
  print(i*i)            # for문
}


i <- 0
while(i<5){
  print(i)           # while문
  i = i+1
}


i <- 0
while (i <= 10) {
  i = 1 + i**2
  print(i)
  if(i>=5){
    print("코드를 강제 종료합니다.")
    break
  }
}
