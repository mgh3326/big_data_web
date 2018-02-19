#Q1
var1 <- c(3,4,5,6,7)
plot(var1)
#Q2
var2 <- c(3,3,4,4)
plot(var2)
#Q3
x <- c(3,3,3)
y <- c(2,3,4)
plot(x, y)
#Q4
x <- c(10,20,30,40,50,60,70,80,90)
y <- c(10,9,8,7,6,5,4,3,2)
plot(x, y)
#Q5
x <- c(2, 4, 6, 8)
y<-c(16,17,19,18)
plot(x, y, xlim = c(0, 10), ylim = c(15, 20), xlab = "xxx", ylab = "yyy", main = "Plot Test")
#Q222222
a <- c(2,4,6,8)

par(mgp = c(2, 1, 0))
plot(a, xlap = "aaa")
par(mgp = c(4, 2, 0))
plot(a, xalp = "aaa")
par(mgp = c(4, 2, 1))
plot(a, xalp = "aaa")

