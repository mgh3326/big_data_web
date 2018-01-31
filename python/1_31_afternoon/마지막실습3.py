num = int(input("숫자를 입력해주세요 : "))
print("입력한 숫자 %d는" % num)
if num > 10:
    print("10보다 큰 ", end='')
else:
    print("10보다 작은 ", end='')
if num % 2 == 0:
    print("짝수입니다.")
else:
    print("홀수입니다.")
