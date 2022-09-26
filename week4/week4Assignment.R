
# 고객
customerName <- c("김윤하", "박경민", "이세화")
customerObesity <- c(FALSE, TRUE, TRUE)

# 트레이너
trainerName <- c("케빈", "조나단", "엘라")
trainerWorkYear <- c(4, 3, 5) 

# 1.고객 관련 벡터를 바탕으로, customerDF라는 고객 정보를 담은 데이터프레임을 만드세요.

customerDF <- data.frame(customerName, customerObesity)

# 2. 트레이너 관련 벡터를 바탕으로, trainerDF라는 트레이너 정보를 담은 데이터프레임을 만드세요.

trainerDF <- data.frame(trainerName, trainerWorkYear)


# 3. customerDF에서 고객들의 이름을 ‘전체 열 추출’ 방식으로 가져오세요.

customerDF_name <- customerDF$customerName
print(customerDF_name)

# 4. customerDF와 trainerDF를 가지고, 헬스장 데이터를 모두 담은 ptList라는 리스트를 만드세요.

ptList <- list(customerDF, trainerDF)

# 5. ptList에서 다시 고객 정보가 담긴 데이터프레임을 꺼내서 보려 합니다. 인덱싱을 통해 customerDF를 추출하세요. 

customerDF_indexing <- ptList[[1]]
print(customerDF_indexing)
