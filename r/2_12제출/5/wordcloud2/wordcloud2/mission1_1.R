setwd("c:\\easy_r")
install.packages("KoNLP")
install.packages("wordcloud")
library(KoNLP)
library(wordcloud)
useSejongDic()
mergeUserDic(data.frame("서진수", "ncn"))
data1 <- readLines("remake2.txt")
data1
data2<-sapply(data1,extractNoun,USE.NAMES = F)
data2
head(unlist(data2),30)
data3<-unlist(data2)
#gsub("변경전 글자",변경후 글자","원본데이터)
data3<-gsub("\\d+","",data3)
data3<-gsub("서울시","",data3)
data3<-gsub("서울","",data3)
data3<-gsub("요청","",data3)
data3<-gsub("제안","",data3)
data3<-gsub(" ","",data3)
data3<-gsub("-","",data3)
data3
write(unlist(data3),"remake2_2.txt")
data4<-read.table("remake2_2.txt")
data4
nrow(data4)
wordcount<-table(data4)
wordcount
head(sort(wordcount,decreasing = T),20)
data3<-gsub("OO","",data3)
data3<-gsub("개선","",data3)
data3<-gsub("문제","",data3)
data3<-gsub("관리","",data3)
data3<-gsub("민원","",data3)
data3<-gsub("이용","",data3)
data3<-gsub("관련","",data3)
data3<-gsub("시장","",data3)
txt<-readLines("gsubfile.txt")
txt
cnt_txt<-length(txt)
cnt_txt
for(i in 1:cnt_txt){
  data3<-gsub((txt[i]),"",data3)
}
data3
write(unlist(data3),"remake2_3.txt")
data4<-read.table("remake2_3.txt")
wordcount<-table(data4)
head(sort(wordcount,decreasing=T),20)
library(RColorBrewer)
palete<-brewer.pal(9,"Set3")
wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq=1,random.order = F,random.color = T,colors = palete)
legend(0.3,1,"성형 수술 부작용 관련 키워드 분석",cex=0.8,fill=NA,bg="white",text.col="red",text.font=2,box.col="red")

