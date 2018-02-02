num1 = int(input("첫번째 숫자를 입력해주세요"))
num2 = int(input("두번째 숫자를 입력해주세요"))
if (num1 > 0 and num2 > 0) or (num1 < 0 and num2 < 0):
    print("부호는 양수입니다.")
else:
    print("부호는 음수입니다.")
