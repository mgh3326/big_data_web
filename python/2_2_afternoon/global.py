def func1():
    global globVar
    globVar = 3
    globVar += 1


def func2():
    print(globVar)


func1()
func2()
