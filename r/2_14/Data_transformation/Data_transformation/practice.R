setwd("c:\\easy_r")

data1 <- read.csv("data1.csv", header = T)

data1

aggregate(X2013년 ~ X2000년, data1, sum)

apply(data1[, c(2:15)], 2, sum)

sapply(data1[, c(2:15)], sum)
# 연령별 합계
apply(data1[c(1:5), c(2:15)], 1, sum)

data2 <- read.csv("1-4호선승하차승객수.csv", header = T)

data2
attach(data2)

tapply(승차, 노선번호, sum)
apply(data2[, c(3:4)], 2, sum)
#노선 번호별 승하차 인원수 합계
tapply(승차 + 하차, 노선번호, sum)
aggregate((승차 + 하차) ~ 노선번호, data2, sum)
#노선 번호별 승차 인원수 합계
aggregate(승차 ~ 노선번호, data2, sum)
#노선 번호별 하차 인원수 합계
aggregate(하차 ~ 노선번호, data2, sum)

install.packages("googleVis")
library(googleVis)
Fruits
aggregate(Sales ~ Fruit, Fruits, mean)
aggregate(Expenses ~ Fruit, Fruits, max)
aggregate(Profit ~ Fruit, Fruits, max)
aggregate(Sales ~ Location, Fruits, mean)
aggregate(Profit ~ Fruit, Fruits, sum)
aggregate(Sales ~ Year, Fruits, sum)
aggregate(Expenses ~ Fruit, Fruits, mean)
aggregate(Profit ~ Location + Fruit, Fruits, mean)
aggregate(Sales ~ Location + Year, Fruits, sum)
aggregate(Expenses ~ Location + Fruit, Fruits, sum)
aggregate(Profit ~ Location + Year, Fruits, max)

data1 <- read.csv("data1.csv", header = T)
data1
apply(data1[-1], 2, sum)
apply(data1[c(1:5), c(2:15)], 1, sum)

apply(data1[, c(10:14)], 2, sum)
apply(data1[c(1:5), c(10:14)], 1, sum)

d1 <- apply(data1[, c(2, 7, 12)], 2, sum)
d2 <- apply(data1[c(1:5), c(2, 7, 12)], 1, sum)

sapply(data1[, c(2:15)], sum)
sapply(data1[, c(10:14)], sum)
sapply(data1[, c(2, 7, 12)], sum)

data2 <- read.csv("1-4호선승하차승객수.csv", header = T)
data2
attach(data2)
aggregate(승차 ~ 노선번호, data2, sum)
#노선 번호별 하차 인원수 합계
aggregate(하차 ~ 노선번호, data2, sum)
apply(data2[, c(3:4)], 2, sum)



#노선 번호별 총 승차 인원수 및 총 하차 인원수의 평균을 구하여라
aggregate(승차 ~ 노선번호, data2, mean)
aggregate(하차 ~ 노선번호, data2, mean)
#노선 번호에 상관없이 승차 인원수의 최대값 및 하차 인원수의 최소 값을 구하시오
lapply(data2[, c(3, 4)], max)
lapply(data2[, c(3, 4)], min)

aggregate((승차 + 하차) ~ 노선번호, data2, min)

aggregate((승차 + 하차) ~ 노선번호, data2, sum)
aggregate(승차 ~ 노선번호, data2, sum)
aggregate(하차 ~ 노선번호, data2, sum)

aggregate(승차 ~ 노선번호, data2, mean)
aggregate(하차 ~ 노선번호, data2, min)
aggregate((승차 + 하차) ~ 노선번호, data2, max)


library(googleVis)
attach(Fruits)
Fruits
library(plyr)
install.packages("dplyr")
library(dplyr)
Fruits_2 <- filter(Fruits, Expenses > 80)
Fruits_2
Fruits_3 <- filter(Fruits, Expenses > 90 & Sales > 90)
Fruits_3
Fruits_4 <- filter(Fruits, Expenses > 90 | Sales > 90)
Fruits_4
Fruits_5 <- filter(Fruits, Expenses == 79 | Sales == 91)
Fruits_5
select(Fruits, Fruit, Year, Sales)
#아래 그림과 같이 Fruits 데이터셋에서 과일 이름별로 모아서 판매량의 합계를 구하세요. 만약 NA 값이 있을 경우 자동으로 삭제하는 옵션도 사용하세요
Fruits %>%
    group_by(Fruit) %>%
    summarise_each(funs(sum), Sales)
#아래와 같이 Fruits 셋에서 과일 이름 별로 모아서 판매량(Sales)과 이익(Profit)의 합계를 구하세요.
Fruits %>%
    group_by(Fruit) %>%
    summarise_each(funs(sum), Sales, Profit)
