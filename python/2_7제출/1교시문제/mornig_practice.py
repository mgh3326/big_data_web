import re

output = ""
while True:
    r = re.compile("^[가-힣]{1,5}$")  ##한글이름  정규식
    while True:
        str = input("한글이름입력")
        if str == 'q':
            exit()
        if r.search(str) is None:
            print("잘못입력")
            continue
        else:
            kname = str
            output += kname
            print(str)
            break

    output += ", "
    r = re.compile("^[1-2][0-9]{3}[0-9]{2}[0-1][0-9]{2}$")  ##학번 정규식
    while True:
        str = input("학번입력")
        if r.search(str) is None:
            print("잘못입력")
            continue
        else:
            if 1990 > (int(int(str) / 100000)) or (int(int(str) / 100000)) > 2017:
                print("잘못입력")
                continue
            tel = str
            output += tel
            print(str)
            break
    output += ", "
    r = re.compile("^[서대부광인울경충제강전][울전구산주천북남원][0-9- 가-힣]{,18}$")  ##주소 정규식
    while True:
        str = input("주소입력")
        if r.search(str) is None:
            print("잘못입력")
            continue
        else:
            email = str
            output += email
            print(str)
            break
    output += ", "
    r = re.compile("^[0-9]{6}$")  ##주민번호 정규식
    while True:
        str = input("생년월일 입력")
        if r.search(str) is None:
            print("잘못입력")
            continue
        else:
            jumin = str
            output += jumin
            print(str)
            break
f = open('C:\\0207.txt', 'w')
if f.write(output):
    print("C:\\0207.txt 경로로 저장을 완료하였습니다.")
f.close()
f = open('C:\\0207.txt', 'r')
line = f.readline()
print(line)
f.close()
