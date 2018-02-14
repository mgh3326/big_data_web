vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c('a', 'b', 'c', 'd', 'e')
max(vec1)
max(vec2)
mean(vec1)
mean(vec2) #오류
min(vec1)
sd(vec1)
sum(vec1)
var(vec1)
install.packages("googleVis")
library(googleVis)
Fruits
aggregate(Sales ~ Year, Fruits, sum)
aggregate(Sales ~ Fruit, Fruits, sum)
aggregate(Sales ~ Fruit, Fruits, max)
aggregate(Sales ~ Fruit + Year, Fruits, max)
mat1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, byrow = T)
mat1
apply(mat1, 1, sum)
apply(mat1, 2, sum)
apply(mat1[, c(2, 3)], 2, max)
list1 <- list(Fruits$Sales)
list1
list2 <- list(Fruits$Profit)
lapply(c(list1,list2),max)
sapply(c(list1, list2), max)
lapply(Fruits[, c(4, 5)], max)
sapply(Fruits[, c(4, 5)], max)
Fruits
tapply(Sales, Fruit, sum) #오류
attach(Fruits)
tapply(Sales, Fruit, sum)
tapply(Sales, Year, sum)
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, 30, 40, 50)
vec3 <- c(100, 200, 300, 400, 500)
mapply(sum, vec1, vec2, vec3)
mat1 <- matrix(c(1, 2, 3, 4,5,6), nrow = 2)
mat1
a<-c(1,1,1)
sweep(mat1,2,a)
a<-c(1,2,3,4,5)
length(a)
Fruits
length(Fruits)
ggplot2::geom_bar
sort1<-Fruits$Sales
sort1
sort(sort1)
sort(sort1,decreasing=T)
setwd("c:\\easy_r")
install.packages("plyr")
library(plyr)
fruits<-read.csv("fruits_10.csv",header = T)
fruits
ddply(fruits,'name',summarise,sum_qty=sum(qty),sum_price=sum(price))
ddply(fruits,'name',summarise,max_qty=max(qty),min_price=min(price))
ddply(fruits,c('year','name'),summarise,max_qty=max(qty),min_price=min(price))
ddply(fruits,'name',transform,sum_qty=sum(qty),pct_qty=(100*qty)/sum(qty))
install.packages("dplyr")
library(dplyr)
data1<-read.csv("2013년_프로야구선수_성적.csv")
data1
data2<-filter(data1,경기>120)
data2
data3<-filter(data1,경기>120&득점>80)
data3
data4<-filter(data1,포지션 %in% c('1루수','3루수'))
data4
select(data1,선수명,포지션,팀)
select(data1,순위:타수)
select(data1,-홈런,-타점,-도루)

data1 %>%
  select(선수명,팀,경기,타수)%>%  
  filter(타수>400)  

data1 %>%
  select(선수명,팀,경기,타수)%>%
  filter(타수>400)%>%
  arrange(타수)

data1 %>%
  select(선수명,경기,타수)%>%
  mutate(경기x타수=경기*타수)%>%
  arrange(경기x타수)
data1 %>%
  group_by(팀)%>%
  summarise(average=mean(경기,na.rm=TRUE))
data1 %>%
  group_by(팀)%>%
  summarise_each(funs(mean),경기,타수)
install.packages("sqldf")
library(sqldf)
install.packages("reshape2")
library(reshape2)
Fruits
melt(Fruits,id="Year")
melt(Fruits,id=c("Year","Fruit"))
melt(Fruits,id=c("Year","Fruit"),variable.name = "var_name",value.name = "val_name")
mtest<-melt(Fruits,id=c("Year","Fruit"),variable.name = "var_name",value.name = "val_name")
dcast(mtest,Year+Fruit~var_name)
dcast(mtest,Year~var_name)
#dcast(mtest,Fruit~var_name,sum)
library(stringr)
fruits<-c('apple','Apple','banana','pineapple')
str_detect(fruits,'A')
str_detect(fruits,'^a')
str_detect(fruits,'e$')
str_detect(fruits,'^[aA]')
str_detect(fruits,'[aA]')
str_count(fruits,ignore.case('a'))
str_count(fruits,'a')
str_c("apple","banana")
str_c("Fruits:",fruits)
str_c(fruits," name is ",fruits)
str_c(fruits,collapse="")
str_c(fruits,collapse="-")
str_dup(fruits,3)
str_length('apple')
str_length(fruits)
str_locate('apple','a')
str_locate(fruits,'a')
str_replace('apple','p','*')
str_replace('apple','p','**')
str_replace_all('apple','p','*')
fruits<-str_c('apple','/','orange','/','banana')
fruits
str_split(fruits,"/")
fruits
str_sub(fruits,start=1,end=3)
str_sub(fruits,start=6,end=9)
str_sub(fruits,start=-5)
str_trim(' apple banana berry   ')#앞뒤 공백을 제거해줌

install.packages("tcltk")
library(tcltk)
sqldf('SELECT *FROM Fruits')
