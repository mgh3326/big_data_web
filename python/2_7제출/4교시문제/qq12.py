def calc_time(_time):
    if time < 24 * 60 * 60:
        hour = _time / (60 * 60)
        _time -= hour * 60 * 60
        minute = hour = _time / 60
        _time -= minute * 60
        second = _time
        print("%d 시 %d 분 %d초 입니다" % (hour, minute, second))
    else:
        print("입력 시간이 하루를 초과합니다")


time = int(input("시간 입력"))
calc_time(time)
