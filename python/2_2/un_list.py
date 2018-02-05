word_list = ['scramble', 'kindly', 'do', 'learn']
count = 0
for i in word_list:
    word_list[count] = "un" + word_list[count]
    # print(i)
    count += 1
print(word_list)
