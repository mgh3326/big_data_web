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

print(bs.find("title"))
print(bs.find('p', align="center"))
print(bs.find('p', align="right"))
print(bs.find('p', align="left"))
