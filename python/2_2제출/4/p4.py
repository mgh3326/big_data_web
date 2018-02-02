total = 0
a = [(1, 3), (3, 5), (7, 9), (13, 15)]
for i in a:
    for k in i:
        total += k
print("total sum : %d" % total)
