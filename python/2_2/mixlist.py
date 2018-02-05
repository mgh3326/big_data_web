mixlist = ['apple', 5, 'banana', 'grape', 3, 8, 6, 'melon']

for element in mixlist:
    if type(element) == str:
        print(element + " type is string")
    else:
        print(str(element) + " type is integer")
