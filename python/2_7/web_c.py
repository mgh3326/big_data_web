import urllib.request
from bs4 import BeautifulSoup


def fetch_post_list():
    URL = target_url
    res = urllib.request.urlopen(URL)
    html = res.read()
    soup = BeautifulSoup(html, 'html.parser')
    table = soup.find('table', class_='kingkongboard-table')
    title_list = table.find_all('td', class_='kingkongboard-list-title')
    links = []
    links = [td.find('a')['href'] for td in title_list]
    return links


target_url = "https://bd1004.azurewebsites.net"
fetch_post_list()