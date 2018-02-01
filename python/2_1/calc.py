a = int(input("첫번째 수를 입력하세요 : "))
ch = input("계산할 연산자를 입력하세요")
b = int(input("첫번째 수를 입력하세요 : "))

if ch == "+":
    print("%d + %d = %d 입니다." % (a, b, a + b))
elif ch == "-":
    print("%d - %d = %d 입니다." % (a, b, a - b))
elif ch == "*":
    print("%d * %d = %d 입니다." % (a, b, a * b))
elif ch == "/":
    print("%d / %d = %d 입니다." % (a, b, a / b))
elif ch == "%":
    print("%d %% %d = %d 입니다." % (a, b, a % b))
elif ch == "//":
    print("%d // %d = %d 입니다." % (a, b, a // b))
elif ch == "**":
    print("%d ** %d = %d 입니다." % (a, b, a ** b))
else:
    print("알수 없는 연산자 입니다.")
