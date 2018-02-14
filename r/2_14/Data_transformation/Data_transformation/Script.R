vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c('a', 'b', 'c', 'd', 'e')
max(vec1)
max(vec2)
mean(vec1)
mean(vec2) #����
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
tapply(Sales, Fruit, sum) #����
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
data1<-read.csv("2013��_���ξ߱�����_����.csv")
data1
data2<-filter(data1,���>120)
data2
data3<-filter(data1,���>120&����>80)
data3
data4<-filter(data1,������ %in% c('1���','3���'))
data4
select(data1,������,������,��)
select(data1,����:Ÿ��)
select(data1,-Ȩ��,-Ÿ��,-����)

data1 %>%
  select(������,��,���,Ÿ��)%>%  
  filter(Ÿ��>400)  

data1 %>%
  select(������,��,���,Ÿ��)%>%
  filter(Ÿ��>400)%>%
  arrange(Ÿ��)

data1 %>%
  select(������,���,Ÿ��)%>%
  mutate(���xŸ��=���*Ÿ��)%>%
  arrange(���xŸ��)
data1 %>%
  group_by(��)%>%
  summarise(average=mean(���,na.rm=TRUE))
data1 %>%
  group_by(��)%>%
  summarise_each(funs(mean),���,Ÿ��)