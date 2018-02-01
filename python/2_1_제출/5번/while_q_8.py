num = int(input("수를 하나 입력해주세요"))
for i in range(1, num + 1):
    if i % 3 == 0:
        print("짝")
    else:
        print("%d"% i)
