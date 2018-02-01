num1 = int(input("첫번째 수를 입력해주세요"))
num2 = int(input("두번째 수를 입력해주세요"))
total = 0
for i in range(num1, num2 + 1):
    total += i
print("%d와 %d 두수 사이의 모든 수를 더한 결과는 %d 입니다." % (num1, num2, total))
