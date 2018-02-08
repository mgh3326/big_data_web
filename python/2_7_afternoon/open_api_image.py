import urllib.request
import urllib.parse
from bs4 import BeautifulSoup
import re


def bind_url():
    default_url = "https://openapi.naver.com/v1/search/image.xml?"
    query = "&query=" + urllib.parse.quote_plus(str(input("검색어를 입력하세요:")))
    # key = 'Hibrg723Mi3GaN01MmE_'
    sort = '&sort=sim'
    start = '&start=1'
    display = '&display=100'
    full_url = default_url + sort + start + display + query
    return full_url


# target = '&target=blog'


def fetch_contents_from_url():
    url = bind_url()
    headers = {
        'Host': 'openapi.naver.com',
        'User-Agent': 'curl/7.43.0',
        'Accept': '*/*',
        'Content-Type': 'application/xml',
        'X-Naver-Client-Id': "Hibrg723Mi3GaN01MmE_",
        'X-Naver-Client-Secret': "3Fv7a7WfKW",
    }
    print(url)
    req = urllib.request.Request(url, headers=headers)
    f = urllib.request.urlopen(req)
    html = f.read()
    # print(html)
    return html


def extract_text_in_tags(tags, tagname="title"):
    txt = []
    reg = "[^<" + tagname + ">][^<]+"
    # print(reg)
    for tag in tags:
        txt.append(re.search(reg, tag).group())
    # print(txt)
    return txt


def get_contents_from_html():
    html = fetch_contents_from_url()
    # print(html)
    title_tags = re.findall("<title>[^<]+</title>", html.decode('utf-8'))
    link_tags = re.findall("<link>[^<]+</link>", html.decode('utf-8'))
    # print(title_tags)
    # print(link_tags)
    titles = extract_text_in_tags(title_tags, tagname="title")
    links = extract_text_in_tags(link_tags, tagname="link")
    f = open("image4.html", "w")
    f.write("<html><body>")
    print(titles)
    for i in range(1, len(titles)):
        f.write("<p>" + titles[i] + "</p>")
        f.write("<img src=" + links[i] + "</>")
    f.write("</body></html>")
    f.close()


get_contents_from_html()
