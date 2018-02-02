coffee_kind = ("아메리카노", "카페라떼", "카푸치노", "에스프레소")


def coffee_machine(button):
    print()
    print("# 1. (자동으로) 뜨거운 물을 준비한다.")
    print("# 2. (자동으로) 종이컵을 준비한다.")

    if 0 < button <= len(coffee_kind):
        print("# 3. (자동으로) %s를 탄다." % coffee_kind[button])
    else:
        print("# 3. (자동으로) 아무거나 탄다")
        print("# 4. (자동으로) 물을 붓는다")
        print("# 5. (자동으로) 스푼으로 저어서 녹인다")


def coffee_order(person):
    coffee = int(input(person + "손님, 어떤 커피를 드릴까요? (1:아메리카노/2:카페라떼/3:카푸치노/4:에스프레소) : "))
    coffee_machine(coffee)
    print(person + "손님~ 커피 여기 있습니다.")


customer = ("철희", "영희", "길동", "민수")
for i in customer:
    coffee_order(i)
