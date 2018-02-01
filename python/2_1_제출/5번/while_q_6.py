total = 0
for i in range(1, 1001):
    if i % 2 == 1:
        total += i
    if total>1000:
        break
print("1부터 1000의 홀수의 합에서 최초로 1000이 넘는 위치 :  %d" % i)
