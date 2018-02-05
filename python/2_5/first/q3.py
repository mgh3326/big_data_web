num = list()
num.append(int(input("첫번째 양의 정수를 입력해주세요")))
num.append(int(input("두번째 영의 정수를 입력해주세요")))
num.append(int(input("세번째 양의 정수를 입력해주세요")))

num = (sorted(num))
if num[2] > num[0] + num[1]:
    if num[0] == num[1] == num[2]:
        print("정삼각형입니다.")
    elif num[0] == num[1] or num[1] == num[2] or num[0] == num[2]:
        print("이등변삼각형입니다.")
    elif num[2] ** 2 > num[0] ** 2 + num[1] ** 2:
        print("직각삼각형입니다.")
    else:
        print("일반삼각형입니다.")
else:
    print("삼각형이 아닙니다.")
