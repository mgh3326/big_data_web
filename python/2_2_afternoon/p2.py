num1 = int(input("이수학기를 입력해주세요"))
num2 = int(input("이수학점을 입력해주세요"))
if num2 < 140:
    print("귀하는 졸업 대상자가 아닙니다")
else:
    if num1 >= 8:
        print("귀하는 정상 졸업자 입니다.")
    else:
        print("귀하는 조기 졸업자 입니다.")
