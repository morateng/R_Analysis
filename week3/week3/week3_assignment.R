
ingredient <- c("햄", "소시지", "라면", "떡", "만두", "양배추")

# 1. 상명이는 라면을 무척 좋아합니다. 벡터에서 인덱싱으로 라면을 선택하세요
ramen <- ingredient[3]
print(ramen)

# 2. 양배추를 제외한 나머지 재료들을 범위 기반 인덱싱으로 선택해보세요
budae <- ingredient[1:5]
print(budae)

# 3. 상명이가 먹고 있는 부대찌개에 몇 개의 재료가 들어갔는지 length()함수로 세어보세요

budaeLength <- length(budae)
print(budaeLength)