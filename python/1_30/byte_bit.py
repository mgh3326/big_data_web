# print(0b10010011)
# print(int('10010011', 2))
# print(0x93)
# int('96', 16)
sel = int(input("입력진수 결정(16/10/8/2) :"))
num = input("값 입력 : ")

if sel != 2 and sel != 8 and sel != 10 and sel != 16:
    print("올바른 진법을 입력해주세요")
else:
    print("16진수 ==> ", hex(int(num, sel)))
    print("10진수 ==> ", (int(num, sel)))
    print("8진수 ==> ", oct(int(num, sel)))
    print("2진수 ==> ", bin(int(num, sel)))
