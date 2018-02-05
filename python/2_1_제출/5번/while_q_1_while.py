val1 = 2
val2 = 5
val3 = 1
i = 2

while i < 5:
    print("-    %d 단    -" % i)
    k = 1
    while k < 10:
        print("%d X %d = %2d" % (i, k, i * k))
        k += 1
    i += 1
    # print("")
