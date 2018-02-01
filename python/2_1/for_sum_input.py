num = int(input("값 입력: "))
hap = 0
for i in range(1, num + 1, 1):
    hap += i
print("1에서 %d까지 합 :%d" % (num, hap))
