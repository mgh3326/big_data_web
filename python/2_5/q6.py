def high_score(score_list):
    print(max(score))


score = list()
for i in range(0, 6):
    score.append(int(input("%d 번째 학생의 점수를 입력해주세요" % (i + 1))))

high_score(score)
