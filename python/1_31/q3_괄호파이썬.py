ss = str(input("문자열 입력 ==>"))
print("출력 문자열 --> ", end='')

if not ss.startswith('('):
    print("(", end='')

print(ss, end='')

if not ss.endswith(')'):
    print(")", end='')
