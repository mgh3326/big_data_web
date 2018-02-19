var1 <- c(1, 2, 3, 4, 5)
plot(var1)
var2 <- c(2, 2, 2)
plot(var2)
x <- 1:3
y <- 3:1
plot(x, y)
plot(x, y, xlim = c(1, 10), ylim = c(1, 5))
plot(x, y, xlim = c(1, 10), ylim = c(1, 5),
     xlab = "X축 값", ylab = "Y축 값", main = "Plot Test")
#plot.new()
#dev.new()
v1 <- c(100, 130, 120, 160, 150)
plot(v1, type = 'o', col = 'red', ylim = c(0, 200),
     axes = FALSE, ann = FALSE)
axis(1, at = 1:5,
     labels = c("MON", "TUE", "WED", "THU", "FRI"))
axis(2, ylim = c(0, 200))
title(main = "FRUIT", col.main = "red", font.main = 4)
title(xlab = "DAY", col.lab = "black")
title(ylab = "PRICE", col.lab = "blue")
v1
#par("mfrow")
par(mfrow = c(1, 3))
plot(v1, type = "o")
plot(v1, type = "s")
plot(v1,tpye="l")
v1
par(mfrow=c(1,3))
pie(v1)
plot(v1,type="o")
barplot(v1)
a<-c(1,2,3)
plot(a,xlap="aaa")
par(mgp=c(0,1,0))
plot(a,xlap="aaa")
par(mgp=c(3,1,0))
plot(a,xalp="aaa")
par(mgp=c(3,2,0))
plot(a,xalp="aaa")
par(mgp=c(3,2,1))
plot(a,xalp="aaa")
par(oma=c(2,1,0))
plot(a,xalp="aaa")
par(oma=c(0,2,0,0))
plot(a,xalp="aaa")
par(mfrow=c(1,1))
v1<-c(1,2,3,4,5)
v2<-c(5,4,3,2,1)
v3<-c(3,4,5,6,7)
plot(v1,type="s",col="red",ylim=c(1,5))
par(new=T)
plot(v2,type="o",col="blue",ylim=c(1,5))
par(new=T)
plot(v3,type="l",col="green")
plot(v1,type="s",col="red",ylim=c(1,10))
lines(v2,type="o",col="blue",ylim=c(1,5))
lines(v3,type="l",col="green",ylim=c(1,15))

legend(4,9,c("v1","v2","v3"),cex=0.9,col=c("red","blue","green"),lty=1)
legend(1,9,c("v1","v2","v3"),cex=0.9,col=c("red","blue","green"),lty=1)

x<-c(1,2,3,4,5)
barplot
barplot(x,horiz=T)
x<-matrix(c(5,4,3,2),2,2)
barplot(x,horiz=T,names=c(5,3),col=c("green","yellow"))
x
barplot(x,names=c(5,3),col=c("green","yellow"),ylim=c(0,12))
x
par(oma=c(1,0.5,1,0.5))
barplot(x,names=c(5,3),beside=T,col=c("green","yellow"),horiz=T)
x<-matrix(c(5,4,3,2),2,2)
barplot(x,horiz=T,names=c(5,3),col=c("green","yellow"),xlim=c(0,12))
v1<-c(100,120,140,160,180)
v2<-c(120,130,150,140,170)
v3<-c(140,170,120,110,160)

qty<-data.frame(BANANA=v1,CHERRY=v2,ORANGE=v3)
qty
barplot(as.matrix(qty),main="Fruit's Sales QTY",
        beside=T,col=rainbow(nrow(qty)),ylim=c(0,400))
legend(14,400,c("MON","TUE","WED","THU","FRI"),cex=0.8,
       fill=rainbow(nrow(qty)))
barplot(t(qty),main="Fruits Sales QTY",ylim=c(0,900),
col=rainbow(length(qty)),space=0.1,cex.axis=0.8,las=1,
names.arg=c("MON","TUE","WED","THU","FRI"),cex=0.8)
legend(0.2,800,names(qty),cex=0.7,fill=rainbow(length(qty)))
qty
t(qty)
peach<-c(180,200,250,198,170)
colors<-c()
for (i in 1:length(peach))
{if (peach[i]>=200)
  {colors<-c(colors,"red")}
else if (peach[i]>=180)
{colors<-c(colors,"yellow")}
else
{colors<-c(colors,"green")}
}
