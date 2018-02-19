setwd("C:\\easy_r")
install.packages("ggmap")
library(ggmap)
gangbuk <- read.csv("서울특별시_용산구_CCTV.csv", header = T)
#강북구_전체 CCTV
g_m <- get_map("yongsangu", zoom = 13, maptype = "roadmap")
gang.map <- ggmap(g_m) + geom_point(data = gangbuk, aes(x = 경도, y = 위도), size = 2, alpha = 0.7, color = "#980000")
gang.map