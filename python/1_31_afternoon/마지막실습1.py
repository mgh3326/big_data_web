score = list()
total = 0
isout = 0
for i in range(0, 3):
    score.append(int(input("%d번째 성적을성적을 입력해주세요" % (i + 1))))
    if score[i] < 40:
        isout = 1
for i in range(0, len(score)):
    total += score[i]
average = total / len(score)
if isout == 1:
    print("과락 입니다.")
elif average >= 60:
    print("합격입니다.")
else:
    print("불합격입니다.")
