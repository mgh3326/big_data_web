import tweepy

Consumer_Key = "ZfUGmkxe9pmSM30CIJNEfqXjx"
Consumer_Secret = "KFmhNUS9zMIj6RCGWuyPi1MJCE3oaxBIuV1szZ3DmAe8HMPZUI"
Access_Token = "961406345256714240-lYd1FVnvxrflLBAjwuzfYYRsV1yWrBt"
Access_Token_Secret = "Jt5bFo7NOuKrYvLkiOHYQqDrUzg7EECKrcOOZVS5jQi5D"
auth = tweepy.OAuthHandler(Consumer_Key, Consumer_Secret)
auth.set_access_token(Access_Token, Access_Token_Secret)
api = tweepy.API(auth)
keyword = "증권"

result = []

for i in range(1, 3):
    tweets = api.search(keyword)
    for tweet in tweets:
        result.append(tweet)
print(len(result))
print(type(result[0]))

for i in range(0, len(result)):
    try:
        print(print(result[i]))
    except UnicodeEncodeError:
        print("인코딩 에러입니다.")
        continue
f = open('tweet.txt', 'w')
for i in range(0, len(result)):
    try:
        f.write(str(result[i]) + '\n')
    except UnicodeEncodeError:
        print("인코딩 에러입니다.")
        continue
f.close()
