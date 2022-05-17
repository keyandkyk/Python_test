max = 5
a = "*" #다이아몬드 출력 문자
b = " " #다이아몬드 공백 문자
for i in range(1,max): #다이아몬드 상단
    for j in range(max - i):
        print(a,end="")
    for k in range(i*2-1):
        print(b,end="")
    for l in range(max-i):
        print(a,end="")
    print("")
for i in range(max,0,-1): #다이아몬드 하단
    for j in range(max - i):
        print(a,end="")
    for k in range(i*2-1):
        print(b,end="")
    for l in range(max-i):
        print(a,end="")
    print("")

print("")
#format를 이용한 방법(공백 문자 변경 불가능)
for i in range(1,max * 2 , 2):
    print("{:^10}".format("*" * i))
for i in range(0,max * 2 , 2):
    print("{:^10}".format("*" * (max * 2 - 1 - i)))
    
max = 1000 #소수를 추출할 범위의 수
pre = list() #소수 리스트 생성
pre.append(2) #2는 소수이므로 먼저 추가
pre_true = True #소수 여부 확인 플래그

for i in range(3, max):
    pre_true = True
    for j in range(2, i):
        if i % j == 0: # 나머지가 0인 수가 있으면 소수가 아님
            pre_true = False
            break
        else:
            pre_true = True
    if pre_true:
        pre.append(i) #소수 추가

for i in range(1, len(pre)):
    print(pre[i], end=" ")
    if i % 10 == 0: #10개 단위로 줄바꿈 시키기 위한 코드
        print("")
print("")
print(sum(pre)) #소수의 합
