import urllib.request
import urllib.parse
from bs4 import BeautifulSoup
classification = int(input("검색 분류를 입력하세요. 1-뉴스, 2-블로그,3-카페"))
search_word = input("검색어를 입력하세요")
file_name = input("파일명을 입력하세요")
if classification == 1:
    defaultURL = "https://openapi.naver.com/v1/search/news.xml?"
elif classification == 2:
    defaultURL = "https://openapi.naver.com/v1/search/blog.xml?"
elif classification == 3:
    defaultURL = "https://openapi.naver.com/v1/search/cafearticle.xml?"
# key = 'Hibrg723Mi3GaN01MmE_'
# target = '&target=blog'
sort = '&sort=sim'
start = '&start=1'
display = '&display=100'
query = '&query=' + urllib.parse.quote_plus(str(search_word))
fullURL = defaultURL + sort + start + display + query
print(fullURL)
file_path = "C://tmp/"+file_name
file = open(file_path, "w", encoding='utf-8')
headers = {
    'Host': 'openapi.naver.com',
    'User-Agent': 'curl/7.43.0',
    'Accept': '*/*',
    'Content-Type': 'application/xml',
    'X-Naver-Client-Id': "Hibrg723Mi3GaN01MmE_",
    'X-Naver-Client-Secret': "3Fv7a7WfKW",
}
req = urllib.request.Request(fullURL, headers=headers)
f = urllib.request.urlopen(req)
resultXML = f.read()
xmlsoup = BeautifulSoup(resultXML, "html.parser")
items = xmlsoup.find_all('item')
for item in items:
    file.write("-------------------------------\n")
    file.write("제목" + item.title.get_text(strip=True) + "\n")
    file.write("요약  내용" + item.description.get_text(strip=True) + "\n")
    file.write("\n")
file.close()
