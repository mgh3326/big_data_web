import urllib.parse


def input_query():

    q = urllib.parse.quote_plus(str(input("검색어 입력하세요: ")))
    return "&query=" + q


print(input_query())
