num_pencil = int(input("연필은 몇개를 구입하시겠습니까?"))
num_pen = int(input("펜은 몇개를 구입하시겠습니까?"))
total_price = 1000 * num_pencil + num_pen + 2000
print("총 가격은 %.1f 원 입니다." % (0.7*total_price))