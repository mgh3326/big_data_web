num = int(input("입력하고 싶은 단 수를 입력하세요."))
for i in range(num, num+1, 1):
    print("-    %d 단    -" % i)
    for k in range(9, 0, -1):
        print("%d X %d = %2d" % (i, k, i * k))
    # print("")
