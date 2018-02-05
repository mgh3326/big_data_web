val = input("주민등록번호 입력 : ")
# print(val[-7])

if val[-7] == '1' or val[-7] == '3':
    print("남자입니다.")
elif val[-7] == '2' or val[-7] == '4':
    print("여자입니다.")
else:
    print("잘못된 입력입다.")
