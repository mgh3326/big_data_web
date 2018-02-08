import urllib.request
import urllib.parse
import re
def input_query():
    q=urllib.parse.quote_plus(str(input("검색할 단어를 입력하세요:")))
    return "&query="+q
def bind_url():
    default_url="https://openapi.naver.com/v1/search/image.xml?"
    display='&display=10'
    query='&query='+urllib.parse.quote_plus(str(input("검색어를 입력하시오:")))
    start="&start=1"
    sort="sort=sim"
    full_url=default_url+display+query+start+sort
    return full_url
def fetch_contents_from_url():
    url=bind_url()
    headers={'Host':'openapi.naver.com','User-Agent':'curl/7.43.0',
         'Accept':'*/*','Content-Type':'application/xml',
         'X-Naver-Client-id':'9wJ4bXNHgR21UwhNQFfH',
         'X-Naver-Client-Secret':'SkDKhx8JBs'
         }
    req=urllib.request.Request(url,headers=headers)
    r=urllib.request.urlopen(req)
    html=r.read()
    return html
def extract_text_in_tags(tags, tagname="title"):
    txt=[]
    reg="[^<"+tagname+">][^<]"
    for tag in tags:
        txt.append(re.search(reg,tag).group())
    return txt
def get_contents_from_html():
    html=fetch_contents_from_url()
    title_tags=re.findall("<title>[^<]+</title>",html.decode('UTF-8'))
    link_tags=re.findall("<link>[^<]+</link>",html.decode('UTF-8'))
    titles=extract_text_in_tags(title_tags,tagname="title")
    links=extract_text_in_tags(link_tags,tagname="link")
    f=open("image3.html","w")
    f.write("<html><body>")
    for i in range (1,len(titles)):
        f.write("<p>"+titles[i]+"</p>")
        f.write("<img src="+links[i]+"</>")
    f.write("</body></html>")
    f.close()
get_contents_from_html()
    
