val = input("입력해주세요")
if val.isalpha():
    print("글자입니다.")
elif val.isdigit():
    print("숫자입니다.")
elif val.isalnum():
    print("숫자 글자가 섞여있습니다.")
else:
    print("모르겠습니다.")
