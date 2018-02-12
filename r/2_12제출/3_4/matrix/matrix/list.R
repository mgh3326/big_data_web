list1<-list(name='James Seo',address='Seoul',tel='010-8706-4712',pay=500)
list1
list1$name
list1[1:2]
list1$birth <- '1975-10-23'
list1
list1$name <-c('Seojinsu','James Seo')
list1$name
list1$birth<-NULL
list1

#Q1
s<-list(ko=90,ma=100,en=98)
#Q2
s$sc<-100
#Q3
s$en
#Q4
s[2:3]
#Q5
s$en<-95
#Q6
s
(s$ko+s$ma+s$en+s$sc)/length(s)
#Q7
s$sc<-NULL
s
