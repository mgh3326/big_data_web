object_one = int(input("사과의 개수는 몇개 입니까? : "))
object_two = int(input("포도의 개수는 몇개 입니까? : "))
object_three = int(input("배의 개수는 몇개 입니까? : "))
if object_one >= 60 and object_two >= 60 and object_three >= 60 or (object_one + object_two + object_three) / 3 >= 70:
    print("자격증을 딸 수 있다.")
else:
    print("자격증을 못 딴다")
