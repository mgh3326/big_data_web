apple_num = int(input("사과의 개수는 몇개 입니까? : "))
grape_num = int(input("포도의 개수는 몇개 입니까? : "))
pear_num = int(input("배의 개수는 몇개 입니까? : "))
orange_num = int(input("귤의 개수는 몇개 입니까? : "))
total_price = apple_num*1000+grape_num*3000+pear_num*2000+orange_num*500
if grape_num >= 3:
    print("총 가격 :  %d" % (total_price * 0.9))
else:
    print("총 가격 :  %d" % total_price)
