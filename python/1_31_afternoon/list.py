aa = [10, 20, 30, 40]
print("aa[-1]은 %d, aa[-2]는 %d" % (aa[-1], aa[-2]))
print(aa[0:3])
print(aa[2:4])
print(aa)
aa[1] = [100, 200]
print(aa)
del (aa[1])
print(aa)
aa[1:2] = [100, 200]
print(aa)
list1 = [1, "안녕하시렵니까?", 10]
print(list1)
list1.append("안녕하오")
print(list1)
