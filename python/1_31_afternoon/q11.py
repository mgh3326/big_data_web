system = int(input("진수(2/8/10/16)를 선택하시오"))
num1 = input("첫 번째 수를 입력하시오.")
num2 = input("두 번째 수를 입력하시오.")

num1 = int(num1, system)
num2 = int(num2, system)

print("두수의 & 연산 결과")
print("""16진수 ==> %s
8진수 ==> %s
10진수 ==> %s
2진수 ==> %s
""" % (hex(num1 & num2), oct(num1 & num2), (num1 & num2), bin(num1 & num2))
      )

print("두수의 | 연산 결과")
print("""16진수 ==> %s
8진수 ==> %s
10진수 ==> %s
2진수 ==> %s
""" % (hex(num1 | num2), oct(num1 | num2), (num1 | num2), bin(num1 | num2))
      )

print("두수의 ^ 연산 결과")
print("""16진수 ==> %s
8진수 ==> %s
10진수 ==> %s
2진수 ==> %s
""" % (hex(num1 ^ num2), oct(num1 ^ num2), (num1 ^ num2), bin(num1 ^ num2))
      )
