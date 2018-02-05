select = int(input("1.수식 계산기 2.두 수 사이 함계 : "))
if select == 1:
    numStr = input("***수식을 입력하세요 : ")
    answer = eval(numStr)
    print(numStr + " 결과는 %5.1f 입니다." % answer)
elif select == 2:
    num1 = int(input("첫번째 수를 입력하세요 : "))
    num2 = int(input("첫번째 수를 입력하세요 : "))
    answer = 0
    print(type(max(num1, num2)))
    print(min(num1, num2))
    for i in range(min(num1, num2), max(num1, num2) + 1):
        answer = answer + i
    print("%d+...+%d는 %d입니다. " % (min(num1, num2), max(num1, num2), answer))

else:
    print("1또는 2만 입력해야합니다.")
