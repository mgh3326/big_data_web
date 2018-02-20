#Q1-1
x <- matrix(c(40, 52, 33, 51), 2, 2);
barplot(x, main = "나를 중시하는 경향", beside = T, names.arg = c("가족도 중요하지만 나를 먼저 생각한다.", "물건을 충동적으로 구매하는 경우가 많다"),
        col = c("purple", "gray"), ylim = c(0, 60))
ohoh = c("2009년", "2014년")
legend(3, 60, c("2009년", "2014년"), cex = 0.5, fill = c("purple", "gray"))
#Q2-2
x <- matrix(c(40, 52, 33, 51), 2, 2);
barplot(x, main = "나를 중시하는 경향", names.arg = c("가족도 중요하지만 나를 먼저 생각한다.", "물건을 충동적으로 구매하는 경우가 많다"),
        col = c("purple", "gray"), ylim = c(0, 100))
ohoh = c("2009년", "2014년")
install.packages("plotrix")
library(plotrix)
p1 <- c(24, 18, 17, 9, 8)
p2 <- c("취직", "친구/이성", "학업성적", "결혼", "외모")
f_label <- paste(p2, "-", p1, "%")
pie3D(p1, main = "20대 최근 관심", col = rainbow(length(p1)), cex = 0.5, labes = f_label, labelcex = 0.9, explode = 0.05)

p1 <- c(24, 18, 17, 9, 8)
f_label <- paste(p1, "%")
pie(p1, main = "20대 최근 관심", radius = 1, col = rainbow(length(p1)), labels = f_label)
legend(1, 1.1, c("취직", "친구/이성", "학업성적", "결혼", "외모"),cex=0.8,fill=rainbow(length(p1)))