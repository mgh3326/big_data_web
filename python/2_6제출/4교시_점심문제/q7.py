import re

str1 = '''https://search.daum.net/search?nil_suggest=btn&nil_ch=&rtupcoll=&w=tot&m=&f=&lpp=&DA=SBC&sug=&sq=&o=&sugo=&q=reg
 ?nil_suggest=btn&nil_ch=&rtupcoll=&w=tot&m=&f=&lpp=&DA=SBC&sug=&sq=&o=&sugo=&q=reg
'''

# r = re.compile(r"\b[?]*\b")
# print(r.findall(str1))
url = re.split('[?]', str1)[0]
url = url+'?'
print(url)
