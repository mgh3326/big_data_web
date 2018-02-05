bank_name = (input("사과의 개수는 몇개 입니까? : "))
way = (input("포도의 개수는 몇개 입니까? : "))
check_money = (input("배의 개수는 몇개 입니까? : "))
if bank_name=="파이" and (way=="card"or way=="bankbook") and check_money=="money":
    print("입금 가능")
else:
    print("입금 불가능")
