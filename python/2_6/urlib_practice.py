import urllib.request

req = urllib.request

d = (req.urlopen("http://wikidocs.net/"))
status = d.getheaders()
for s in status:
    print(s)
print(d.status)
print(d.read())
