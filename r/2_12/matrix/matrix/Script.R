mat1<-matrix(1,2,3,4)
mat1
mat2 <-matrix(c(1,2,3,4),nrow=2)
mat2
mat3<-matrix(c(1,2,3,4),nrow=2,byrow=T)
mat3
mat3[,1]
mat3[1,]
mat3[1,1]
mat4<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow=T)
mat4
mat4<-rbind(mat4,c(11,12,13))
mat4
mat4<-rbind(mat4,c(15,16,17,18)) ##길이 달라서 에러가 납니다
mat5<-matrix(c('a','b','c','d'),nrow=2,byrow=T)
mat5
mat5<-cbind(mat5,c('e','f'))
mat5
colnames(mat5)<-c('First','Second','Third')
mat5

