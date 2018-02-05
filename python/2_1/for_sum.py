hap = 0

for i in range(501, 1001, 2):
    hap += i

print("500에서 1000까지 홀수의 합 : %d" % hap)
sum = 0
for i in range(0, 101):
    if i % 7 == 0:
        sum += i
print("0에서 100까지 7의 배수 합계 : %d" % sum)

