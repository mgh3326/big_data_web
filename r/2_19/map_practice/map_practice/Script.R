setwd("C:\\easy_r")
install.packages("ggmap")
library(ggmap)
gangbuk <- read.csv("project_gangbuk_data.csv", header = T)
#���ϱ�_��ü CCTV
g_m <- get_map("gangbukgu", zoom = 13, maptype = "roadmap")
gang.map <- ggmap(g_m) + geom_point(data = gangbuk, aes(x = LON, y = LAT), size = 2, alpha = 0.7, color = "#980000")
gang.map