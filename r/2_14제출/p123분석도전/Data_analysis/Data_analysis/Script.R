setwd("c:\\easy_r")
exam<-read.csv("csv_exam.csv")
head(exam)
head(exam,10)
tail(exam)
tail(exam,10)
View(exam)
dim(exam)
str(exam)
summary(exam)
#install.packages("ggplot2")
library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)
library(dplyr)
df_raw<-data.frame(var1=c(1,2,1),var2=c(2,3,2))
df_raw
df_new<-df_raw
df_new
df_new<-rename(df_new,v2=var2)
df_new
df_raw
my_mpg<-mpg
my_mpgg<-rename(mpg,city=cty)
my_mpg<-rename(mpg,highway=hwy)
head(my_mpg)
df<-data.frame(var1=c(4,3,8),var2=c(2,6,1))
df
df$var_sum<-df$var1+df$var2
df
df$var_mean<-(df$var_sum)/2
df
mpg$total<-(mpg$cty+mpg$hwy)/2
head(mpg)
mean(mpg$total)
summary(mpg$total)
hist(mpg$total)
mpg$test<-ifelse(mpg$total>=20,"pass","fail")
head(mpg,20)
table(mpg$test)
qplot(mpg$test)
mpg$grade<-ifelse(mpg$total>=30,"A",ifelse(mpg$total>=20,"B","C"))
head(mpg,20)
table(mpg$grade)
qplot(mpg$grade)
mpg$grade2<-ifelse(mpg$total>=30,"A",ifelse(mpg$total>=25,"B",ifelse(mpg$total>=20,"C","D")))
table(mpg$grade2)
qplot(mpg$grade2)

#분석도전
mid<-as.data.frame(ggplot2::midwest)
head(mid)
mid<-rename(mid,total=poptotal)
mid<-rename(mid,asian=popasian)
head(mid)
mid$percentage<-(mid$asian/mid$total)
head(mid)
hist(mid$percentage)
mean(mid$percentage)
mid$test<-ifelse(mid$percentage>=mean(mid$percentage),"large","small")
head(mid,20)
table(mid$test)
qplot(mid$test)
