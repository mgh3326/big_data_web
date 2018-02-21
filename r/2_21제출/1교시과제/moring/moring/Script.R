#지도상에 버블차트로 현황 표시하기

setwd("c:\\easy_r")
library(ggmap)
library(grid)
pop <- read.csv("지역별인구현황_2014_4월기준.csv", header = T)
pop
lon <- pop$LON
lat <- pop$LAT
data <- pop$총인구수
df <- data.frame(lon, lat, data)
df
map1 <- get_map("Jeonju", zoom = 7, maptype = "roadmap")
map1 <- ggmap(map1)
map1 + geom_point(aes(x = lon, y = lat, colours = data, size = data), data = df)

map2 <- get_map("Jeonju", zoom = 7, maptype = "terrain")
map2 <- ggmap(map2)
map2 + geom_point(aes(x = lon, y = lat, colours = data, size = data), data = df)
ggsave("pop2.png", scale = 1, width = 7, height = 4, dpi = 1000)

map3 <- get_map("Jeonju", zoom = 7, maptype = "satellite")
map3 <- ggmap(map3)
map3 + geom_point(aes(x = lon, y = lat, colours = data, size = data), data = df)
ggsave("pop3.png", scale = 1, width = 7, height = 4, dpi = 1000)

map4 <- get_map("Jeonju", zoom = 7, maptype = "hybrid")
map4 <- ggmap(map4)
map4 + geom_point(aes(x = lon, y = lat, colours = data, size = data), data = df)
ggsave("pop4.png", scale = 1, width = 7, height = 4, dpi = 700)

map5 <- get_map("Jeonju", zoom = 7, maptype = "roadmap")
map5 <- ggmap(map5)
map5 + stat_bin2d(aes(x = lon, y = lat, colours = data, fill=factor(data),size = data), data = df)
ggsave("pop5.png", scale = 1, width = 7, height = 4, dpi = 700)

####경로 표시하기####
setwd("c:\\easy_r")
install.packages("ggplot2")
library(ggplot2)
library(ggmap)

jeju <- read.csv("제주도여행코스_1일차.csv", header = T)
jeju
jeju1 <- get_map("Hallasan", zoom = 10, maptype = "hybrid")
jeju.map <- ggmap(jeju1) + geom_point(data = jeju, aes(x = LON, y = LAT), size = 3, alpha = 0.7, col = "red")
#geom_path 함수를 써서 경로를 선으로 연결해서 표시합니다.
jeju.map + geom_path(data = jeju, aes(x = LON, y = LAT), size = 1, linetype = 2, col = "blue") +
    geom_text(data = jeju,aes(x = LON,y=LAT+0.01,label=장소),size=3)
