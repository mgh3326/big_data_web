student1 = {'학번': 1000, '이름': '홍길동', '학과': '열공학과'}
print(student1)
student1['연락처'] = '010-1111-2222'
print(student1)
del (student1['연락처'])
print(student1.items())
oh = student1.keys()
