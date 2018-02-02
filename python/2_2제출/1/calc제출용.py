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
    elif op == '**':
        result = v1 ** v2
    return result


var1 = int(input("첫 번째 숫자 입력 :"))
operator = input("계산 입력 ( +, -, *, / ) : ")

var2 = int(input("두 번째 숫자 입력 :"))
if operator == '/' and var2 == 0:
    print("0으로 나눌수 없습니다.")
else:
    res = calc(var1, var2, operator)
    print("## 계산기 : %d %s %d = %d" % (var1, operator, var2, res))
