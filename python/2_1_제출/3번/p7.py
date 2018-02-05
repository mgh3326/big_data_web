grade = int(input("몇학년 입니까? : "))
price_coat = 33000
if grade == 3:
    print("고3이라서 10%%할인되서 %d" % (price_coat * 0.9))
else:
    print("할인 안되서 %d" % price_coat)
