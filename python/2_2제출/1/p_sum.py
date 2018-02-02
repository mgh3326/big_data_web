num = int(input("숫자를 입력해주세요 1부터 모두 더해드리겠습니다."))
step = 0
_sum = 0
while step <= num:
    _sum += step
    step += 1
print(_sum)