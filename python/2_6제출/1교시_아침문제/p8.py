arr = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'}
a = {'D', 'C', 'J', 'K', 'L'}
b = {'B', 'E', 'H', 'L'}
my_list = list(set(list(a) + list(b)))
arr_list = list(arr)
for i in my_list:
    arr_list.remove(i)
print(arr_list)
