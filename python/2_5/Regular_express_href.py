import re

url = '<a href = "C:\Python34\Koala.jpg"> 그림 </a> <font size = "10">'
print(re.search('href="(.*?)">', url).group(1))  # <-- 이부분이 정규식입니다
