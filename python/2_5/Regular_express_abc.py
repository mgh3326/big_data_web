import re
r = re.compile("a.c")
print(r.search("abc")) #case 1

print(r.search("afc")) #case 2
print(r.search("ac")) #case3
