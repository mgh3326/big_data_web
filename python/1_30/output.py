print("%d" % 123)
print("%5d" % 123)
print("%05d" % 123)

print("%f" % 123.45)
print("%7.1f" % 123.45)
print("%7.3f" % 123.45)

print("%s" % "Python")
print("%10s" % "Python")

print("%d %5d %05d" % (123, 123, 123))
print("{0:d} {1:5d} {2:05d}".format(123, 123, 123))

up_rate = 30
print("우와! 급여가 %s%% 나 올랐네~~" % up_rate)

var1 = 10000
var2 = 1000
msg = "고객님의 이번달 결재 금액은 %s 원이고, 결재후 잔액은 %s원 입니다."
print(msg % (var1, var2))

a = 10
a += 5
print(a)
a -= 5
print(a)
a *= 5
print(a)
a /= 5
print(a)
a //= 5
print(a)
a %= 5
print(a)
a **= 5
print(a)
