hex_num = input("16진수 한 글자를 입력하세요 ")
if 71 <= ord(hex_num) <= 90 or 103 <= ord(hex_num) <= 122:
    print("16진수가 아닙니다")
else:
    print("16진수 ==> %d" % int(hex_num, 16))
