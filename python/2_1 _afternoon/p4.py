capacity = 28
electronic = int(input("현재 전기 현재 용량을 입력해주세요 : "))
if electronic/capacity <= 0.3:
    print("전기량이 적으니, 휘발유로 주행해야 한다.")
else:
    print("아직 전기량이 충분합니다.")
