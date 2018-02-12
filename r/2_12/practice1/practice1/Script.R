#1
v1 <- c(1:10)
v1
#2
v1[1:5]
#3
v1[3:7]
#4
v1[-1:-5]
#5
v1[-3:-7]
#6
v1[3]<-0
v1[6]<-0
#7
v1[9]<-"0"
#8
class(v1)
#9
v1<-as.numeric(v1)

#Q2
#1
append(v1,0,after=0)
#2
v1<-append(v1,11,after=length(v1))
v1
#3
v1<-append(v1,c(14:20),after=length(v1))
v1
#4
append(v1,c(12:13),after=11)
v2<-100
v1+v2
v2<-c(100,200,300)
v1+v2
#Q3

#1
union(v1,v2)
#2
union(setdiff(v1,v2),setdiff(v2,v1))
#3
intersect(v1,v2)
#4
names(v1)<-c('A','B','C')
#5
v3<-seq(5,50,by=5)
#6
v4<-c(5,6,5,6,5,6)
#7
v5<-c(-1,-1,-1,0,0,0,1,1,1)
#8
length(v5)
#9
15 %in% v3
#10
vv<-55 %in% v3