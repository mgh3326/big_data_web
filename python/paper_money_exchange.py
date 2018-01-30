won = int(input("교환할 돈은 얼마 ? "))
print("\n5만원짜리 ==> %d개" % (won / 50000))
won %= 50000
print("1만원짜리 ==> %d개" % (won / 10000))
won %= 10000

print("5천원짜리 ==> %d개" % (won / 5000))
won %= 5000

print("1천원짜리 ==> %d개" % (won / 1000))
won %= 1000

print("바꾸지 못한 금액 ==> %d개" % won)
