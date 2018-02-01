import random

weather = random.randrange(0, 2)
time = random.randrange(0, 24)
if 6 <= time < 9 and weather == 1:
    print("종달새는 노래를 부릅니다.")
else:
    print("종달새는 노래를 부르지 않습니다.")
