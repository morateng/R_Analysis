
# 스칼라
partientScalar <-c("김상명")
is(partientScalar)   # is()는 데이터의 자료형, 자료구조를 파악할 수 있다

# 벡터
partientVector <- c("김상명", "조세빈", "이준표", "문정현", "김주희")
is(partientVector)

# 요인(Factor) 범주형 데이터를 가지는 자료구조

patientFactorVec <- c("성별", "혈액형", "체력수준", "담당과")
patientFactor <- factor(patientFactorVec)   # factor()함수 속에 벡터를 담아서 factor를 생성
is(patientFactor)

# 행렬

vec <- c("김상명", "조세빈", "이준표", "남", "여", "남")
matrix_OneVec <- matrix(vec, nrow=2, ncol=3, byrow = T)
print(matrix_OneVec)

# 벡터를 합쳐서 행렬 생성

nameVec <- c("김상명", "조세빈", "이준표")
genVec <- c("남", "여", "남")
matrix_multiVec_row <- rbind(nameVec, genVec)   # 행기준으로 합침
print(matrix_multiVec_row)

maxtrix_multiVec_col <- cbind(nameVec, genVec)  # 열기준으로 합침
print(maxtrix_multiVec_col)

# 배열(Array)

patNameVec <- c("김상명", "조세빈", "이준표")
patGenVec <- c("남", "여", "남")

docNameVec <- c("김보연", "박상빈", "국해연")
docMajorVec <- c("내과", "안과", "외과")

patMatrix <- rbind(patNameVec, patGenVec)
docMatrix <- rbind(docNameVec, docMajorVec)

hospitalArray <- array(c(patMatrix, docMatrix), c(2, 3, 2))
print(hospitalArray)


hospitalArray2 <- array(c(patMatrix, docMatrix), c(2, 2, 3))
print(hospitalArray2)


# 데이터프레임(DataFrame)

patBMIVec <- c(19.1, 21.5, 23.0)
patDF <- data.frame(patNameVec, patBMIVec)
print(patDF)

patDF <- data.frame(rbind(patNameVec, patBMIVec))
print(patDF)


# 데이터 프레임 추출

patDF <- data.frame(patNameVec, patBMIVec)
patDF_name <- patDF$patNameVec  # 열 추출
print(patDF_name)

patDF_indexing <- patDF[2, 1]  # 객체 추출
print(patDF_indexing)

# 리스트

atom <- "헬스케어 빅데이터 구조"
vec1 <- c("김상명", "조세빈", "이준표")
vec2 <- c(19.1, 21.5 , 23)
df <- data.frame(vec1, vec2)

entireList <- list(atom, vec1, vec2, df)
print(entireList)

vecone_indexing <- entireList[[2]]  # 인덱싱
print(vecone_indexing)
