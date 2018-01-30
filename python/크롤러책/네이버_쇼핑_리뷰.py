import urllib.parse
import urllib.request
import time
import os
import re

from bs4 import BeautifulSoup

from app import *

headers = {"User-Agent" : "Mozilla/5.0", "referer" : "http://m.naver.com"}
review_url = "http://shopping.naver.com/detail/section_user_review.nhn?nv_mid={mid}&page={page}&sort=0&mall_id=all&score=all&imgYN=all&briefYN=Y&topicCode=&reviewSeq="

def fetch_naver(url, count, path):

        def fetch_first_list(url):
                print(url)
                search_list = []
                soup = read_to_soup(url, headers)

                li = soup.find("ul", class_="lst_review").find_all("li")

                for r in li:
                        title = r.find("p", class_="subjcet")["title"]
                        rate = r.find("span", class_="curr_avg").find("strong").get_text()
                        text = r.find("div", class_="atc").get_text(strip = True)

                        info = r.find("div", class_="info")
                        date = info.find("span", class_="regdate").get_text()
                        path = info.find("span", class_="path").find("strong").get_text()

                        search_list.append({
                                "title" : title,
                                "rate" : rate,
                                "text" : text,
                                "date" : date,
                                "path" : path
                                })

                return search_list

        f = save_file(path)
        lcount = 1                

        mid = get_mid(url)
        page = 1
        URL = review_url.format(mid=mid, page=page)

        time.sleep(3)
        print("start")
        f_result = fetch_first_list(URL)

        for r in f_result:
                if lcount > count:
                        break
                                        
                separation(f)
                file_write(f, r["title"])
                file_write(f, r["date"])
                file_write(f, r["rate"])
                file_write(f, r["text"])
                file_write(f, r["path"])
                separation(f)

                lcount += 1
        
        while True:
                if lcount > count:
                        break
                else:
                        delay_random()
                        
                page += 1
                
                URL = review_url.format(mid=mid, page=page)
                f_result = fetch_first_list(URL)
                
                for r in f_result:
                        if lcount > count:
                                break
                                
                        separation(f)
                        file_write(f, r["title"])
                        file_write(f, r["date"])
                        file_write(f, r["rate"])
                        file_write(f, r["text"])
                        file_write(f, r["path"])
                        separation(f)
                        
                        lcount += 1
                        
        f.close()
        

def fetch_storefarm(url, count, path):
        # http://storefarm.naver.com/l2s/products/343294938/purchasereviews/premium?sortType=PURCHASE_REVIEW_CREATED&page.page=2&page.size=10
        # http://storefarm.naver.com/l2s/products/343294938/purchasereviews/general?page.page=2&page.size=10
        lcount = 1
        
        def fetch_prem_list(url):
                d_url = "http://storefarm.naver.com/l2s/products/{no}/purchasereviews/premium?sortType=PURCHASE_REVIEW_CREATED&page.page={page}&page.size=10"
                
                lcount = 1
                page = 1
                
                pno = get_pno(url)
                
                search_list = []
                
                URL = d_url.format(no=pno, page=page)
                print(URL)
                soup = read_to_soup(URL, headers)
                print(soup)
                f = save_file(path)
                
                li = soup.find("ul", class_="_premium_result_area").find_all("li")
                
                if not len(li):
                        print('no primeum')
                else:
                        for r in li:
                                if lcount > count:
                                        break
                                
                                title = r.find("dt").find("a").get_text()
                                text = r.find("dd", class_="cont").find("a").get_text()
                                date = r.find("span", class_="date").get_text(strip=True)
                                
                                separation(f)
                                file_write(f, title)
                                file_write(f, text)
                                file_write(f, date)
                                separation(f)
                                
                                lcount += 1

                        while True:
                                if lcount > count:
                                        break
                                else:
                                        delay_random()

                                page += 1
                                
                                URL = d_url.format(no=pno, page=page)
                                soup = read_to_soup(url, headers)
                                
                                li = soup.find("ul", class_="buy_rating_lst").find_all("li")
                                if not len(li):
                                        return

                                for r in li:
                                        if lcount > count:
                                                break
                                        
                                        title = r.find("dt").find("a").get_text()
                                        text = r.find("dd", class_="cont").find("a").get_text()
                                        date = r.find("span", class_="date").get_text(strip=True)
                                        
                                        separation(f)
                                        file_write(f, title)
                                        file_write(f, text)
                                        file_write(f, date)
                                        separation(f)
                                        
                                        title = r.find("")
                                        lcount += 1
                f.close()

        fetch_prem_list(url)          

                        
def get_pno(url):
        t_pno = re.search("/products/[0-9]+", url).group()
        pno = re.search("[0-9]+", t_pno).group()
                
        return pno
        
def get_mid(url):
        t_mid = re.search('nv_mid=[0-9]+', url).group()
        mid = re.search('[0-9]+', t_mid).group()

        return mid

def fetch_start():
        url = input_url()
        count = input_count()
        path = input_save_path()
        
        if re.search('http://shopping.naver.com/', url):
                fetch_naver(url, count, path)
        elif re.search('http://storefarm.naver.com/', url):
                fetch_storefarm(url, count, path)
        else:
                print('none')

func_loop(fetch_start)
