def cal_area(_bottom, _height):
    area = float(0.5 * _bottom * _height)
    print("삼각형 넓이 : %f" % area)


bottom = float(input("밑변 입력"))
height = float(input("밑변 입력"))
cal_area(bottom, height)
