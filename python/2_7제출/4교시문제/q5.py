def list_avg(num):
    sum = 0
    for i in num:
        sum += i
    return sum / len(num)


math_score = [90, 80, 70, 50, 60]
print(list_avg(math_score))
