num = int(input("입력하고 싶은 단 수를 입력하세요."))
print("-    %d 단    -" % num)
# for k in range(1, 10, 1):
k = 1
while k < 10:
    print("%d X %d = %2d" % (num, k, num * k))
    k += 1
# print("")
