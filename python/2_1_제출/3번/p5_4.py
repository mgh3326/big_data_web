t_num = int(input("티셔츠의 개수를 입력해주세요 : "))
s_num = int(input("스웨터의 개수를 입력해주세요 : "))
total = 10000 * t_num + 30000 * s_num
if total <= 100000:
    total = ((1 - 0.05) * total)
else:
    total = ((1 - 0.15) * total)
print("총 금액은 %d" %total)
