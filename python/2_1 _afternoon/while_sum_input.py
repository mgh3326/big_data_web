num1 = int(input("시작값 입력: "))
num2 = int(input("끝값 입력: "))
num3 = int(input("증가값 입력: "))
hap = 0
# for i in range(num1, num2 + 1, num3):
#     hap += i
i = num1
while i < num2 + 1:
    hap += i
    i += num3
print("%d에서 %d까지 %d씩 합 :%d" % (num1, num2, num3, hap))
