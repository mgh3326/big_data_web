def calc(v1, v2, op):
    result = 0
    if op == '+':
        result = v1 + v2
    elif op == '-':
        result = v1 - v2
    elif op == '*':
        result = v1 * v2
    elif op == '/':
        result = v1 / v2
    return result


operator = input("계산 입력 ( +, -, *, / ) : ")
var1 = int(input("첫 번째 숫자 입력 :"))
var2 = int(input("두 번째 숫자 입력 :"))

res = calc(var1, var2, operator)
print("## 계싼기 : %d %s %d = %d" % (var1, operator, var2, res))
