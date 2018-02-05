num = list()
num.append(int(input("첫번째 양의 정수를 입력해주세요")))
num.append(int(input("두번째 영의 정수를 입력해주세요")))
num.append(int(input("세번째 양의 정수를 입력해주세요")))

# print(num)
# print(sum(num))
max_num = num[0]

if sum(num) % 2 == 0:
    for i in num:
        if max_num < i:
            max_num = i
    print("가장 큰수는 %d 입니다." % max_num)
else:
    print("세 수의 합은 %d 입니다." % sum(num))
