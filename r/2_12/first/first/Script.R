getwd()
setwd("C:\\easy_r")
getwd()
var1 <- c(1, 2, 5, 7, 8)
var1
var2 <- c(1:5)
var2

var4 <- seq(1, 10, by = 2)
var4
install.packages("ggplot2")
library(ggplot2)
x <- c("a", "a", "b", "c")
qplot(x)
qplot(data = mpg, x = hwy)
qplot(data = mpg, x = cty)
qplot(data = mpg, x = drv, y = hwy)
date2 <- seq(from = as.Date("2014-01-01"), to = as.Date('2014-05-31'), by = 'month')
#혼자서 해보기
#Q1. 시험 점수변수 만들고 출력하기
score <- c(80, 60, 70, 50, 90)
print(score)


#Q2. 전체 평균 구하기
total <- average(score)
average <- total / length(score)
print(average)
#Q3. 전체 평균 변수 만들고 

fruits <- c(10, 20, 30)
fruits

names(fruits) <- c('apple', 'banana', 'peach')
fruits
NROW(fruits)
