import re

a = "Raindrops# on Roses*, and Whiskers! on kittens."
r = re.compile("\\bo.\\b")
print(r.findall(a))
r = re.compile(r"\bw\S+\b")
print(r.findall(a))
r = re.compile(r"\b[a-z]\S*\b")
print(r.findall(a))
r = re.compile(r"\b\S*['#*!.,]+\B")
print(r.findall(a))
