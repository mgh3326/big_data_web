setwd("c:\\easy_r")
install.packages("KoNLP")
install.packages("wordcloud")
library(KoNLP)
library(wordcloud)
useSejongDic()
mergeUserDic(data.frame("서진수", "ncn"))
list.files()
list.files(recursive=T)
list.files(all.files=T)
scan1<-scan('scan_1.txt')
scan1
scan2<-scan('scan_2.txt')
scan2
scan2<-scan('scan_2.txt',what="")
scan2
scan3<-scan('scan_3.txt',what="")
scan3
scan4<-scan('scan_4.txt',what="")
scan4
input<-scan()
input
input2<-scan(what="")
input2
input3<-readline()
input3
input4<-readline("Are you OK? :")
input4
input5<-readLines('scan_4.txt')
input5
fruits<-read.table('fruits.txt')
fruits
fruits<-read.table('fruits.txt',header = T)
fruits
fruit2<-read.table('fruits_2.txt')
fruit2
fruit2<-read.table('fruits_2.txt',skip=2)
fruit2
fruit2<-read.table('fruits_2.txt',nrows=2)
fruit2
fruit3<-read.table('fruits.txt',header = T,nrows = 2)
fruit3
fruit3<-read.table('fruits.txt',header = F,skip=2,nrows = 2)
fruit3
fruit3<-read.csv('fruits_3.csv')
fruit3
fruit4<-read.csv('fruits_4.csv')
fruit4
fruit4<-read.csv('fruits_4.csv',header=F)
fruit4
label<-c('NO','NAME','PRICE','QTY')
fruit4<-read.csv('fruits_4.csv',header=F,col.names = label)
fruit4
install.packages("googleVis")
library(googleVis)
install.packages("sqldf")
library(sqldf)
Fruits
write.csv(Fruits,"Fruits_sql.csv",quote = F,row.names=F)
fruits_2<-read.csv.sql("Fruits_sql.csv",
                     sql="SELECT*FROM file WHERE Year = 2008")
fruits_2
install.packages("readxl")
library(readxl)
df_exam<-read_excel("excel_exam.xlsx")
df_exam
mean(df_exam$english)
mean(df_exam$science)
fruits6 <- read.delim("clipboard",header=T)
fruits6
write.table(fruits6,'fruits6.txt')
fruits6_2<-read.table('fruits6.txt',header = T)
fruits6_2
install.packages("WriteXLS")
library(WriteXLS)
name<-c("Apple","Banana","Peach")
price<-c(300,200,100)
item<-data.frame(NAME=name,PRICE=price)
item
WriteXLS("item","item.xls")
install.packages("XML")
library(XML)
install.packages("kulife")
library(kulife)
name<-c('Apple','Banana','Peach')
price<-c(300,200,100)
item<-data.frame(NAME=name,PRICE=price)
item
write.xml(item,file='item.xml')
txt1<-read.csv("csv_test.txt")
txt1
txt2<-readLines("csv_test.txt")
txt2
txt3<-read.table("csv_test.txt")
txt3
txt3<-read.table("csv_test.txt",sep=",")
txt3
txt3<-read.table("csv_test.txt",sep=",",header=T)
txt3
txt1<-readLines("write_test.txt")
txt1
write(txt1,"write_test2.txt")
txt2<-readLines("write_test2.txt")
txt2
txt1<-read.table("table_test.txt",head=T)
txt1
write.table(txt1,"table_test2.txt")
txt2<-read.table("table_test2.txt",head=T)
txt2
txt1<-read.csv("csv_test.csv")
txt1
write(txt1,"csv_test2.csv")#에러발생

write.table(txt1,"csv_test2.csv")
txt<-read.csv("csv_test2.csv")
txt2
write.csv(txt1,"csv_test3.csv")
txt3<-read.csv("csv_test3.csv")
txt3
install.packages("xlsx")
library(xlsx)
write.xlsx(txt3,"txt3.xlsx")


save(df_midterm,file='df_midterm.rda')
df_exam<-read_excel("excel_exam.xlsx")
