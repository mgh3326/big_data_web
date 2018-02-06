f = open("test.txt", "r")
foods = f.readlines()
for food in foods:
    print(food)
f.seek(0)
print(f.readline())
print(f.tell())
