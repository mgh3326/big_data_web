num = list()
num.append(int(input("첫번째 정수를 입력해주세요")))
num.append(int(input("두번째 정수를 입력해주세요")))
num.append(int(input("세번째 정수를 입력해주세요")))

# print(num)
max_num = num[0]
for i in num:
    if max_num < i:
        max_num = i
print("가장 큰수는 %d 입니다." % max_num)
