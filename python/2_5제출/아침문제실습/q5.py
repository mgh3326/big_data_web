height = int(input("높이를 입력하세요(m) : "))
num = 0
while True:
    # print("num : %d  height : %f" % (num, height))
    height = height / 2
    if height < 0.00001:
        break
    num += 1
print("공이 튀긴 횟수는 %d 회입니다." % num)
