won = int(input("교환할 돈은 얼마 ? "))
print("\n오백원짜리 ==> %d개" % (won / 500))
won %= 500
print("백원짜리 ==> %d개" % (won / 100))
won %= 100

print("오십원짜리 ==> %d개" % (won / 50))
won %= 50

print("십원짜리 ==> %d개" % (won / 10))
won %= 10

print("바꾸지 못한 잔돈 ==> %d개" % won)
