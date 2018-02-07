from bs4 import BeautifulSoup

html = """
<html>
    <head>
        <title> test web </title>
    </head>
    <body>
        <p align = "center"> text contents1 </p>
        <p align = "right"> text contents2 </p>
        <p align = "left"> text contents3 </p>

        <img src = "c:\Python36\Koala.jpg" width="500" height="300">
    </body>
</html>
"""
bs = BeautifulSoup(html, 'html.parser')

body_tag = bs.find('body')
list_1 = body_tag.find_all(['p','img'])

for tag in list_1:
    print(tag)