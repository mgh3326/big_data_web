def test(my_list, my_list_name):
    if len(my_list) >= 5 and my_list.count("maintenance") > 0:
        print("%s will be tested" % my_list_name)
    else:
        print("%s 는 시험 문제로 불가능합니다." % my_list_name)


list_ex1 = ["risk", "issue", "test", "maintenance", "maturity"]
list_ex2 = ["security", "plan", "design", "systematic", "safety"]
list_ex3 = ["maintenance", "verification", "validation"]
test(list_ex1, "list_ex1")
test(list_ex2, "list_ex2")
test(list_ex3, "list_ex3")
