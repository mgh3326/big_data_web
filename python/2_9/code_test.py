import urllib.request
from bs4 import BeautifulSoup
import pandas as pd
import datetime
from itertools import count
import xml.etree.ElementTree as ET

req=urllib.request
d = req.urlopen("http://www.pelicana.co.kr/store/stroe_search.html?page=2&branch_name=&gu=&si=")
print(d.status)