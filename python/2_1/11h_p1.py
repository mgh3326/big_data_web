import random

dice1 = random.randrange(1, 7)
dice2 = random.randrange(1, 7)

if dice1 > dice2:
    print("첫번째 사람이 이겼습니다.")
elif dice1 < dice2:
    print("두번째 사람이 이겼습니다.")
else:
    print("비겼습니다.")
