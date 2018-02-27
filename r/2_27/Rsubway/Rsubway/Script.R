
libs <- c('ggplot2', 'ggmap', 'jsonlite')
unlist(lapply(libs, require, character.only = TRUE))
subway <- read.csv('c:/easy_r/subway.csv', header = TRUE, stringsAsFactors = FALSE, fileEncoding = 'UTF-8')
str(subway)
class(subway[, 'income_date']) <- 'character'
subway[, 'income_date'] <- as.Date(subway[, 'income_date'], format = '%Y%m%d')
unique(format(subway[, 'income_date'], '%Y'))
idx <- format(subway[, 'income_date'], '%Y') == '2014'
unique(format(subway[, 'income_date'], '%m'))
subway2 <- subset(subway, subset = format(income_date, '%Y') != '2014')
sort(unique(subway[, 'stat_name']))
idx <- grep("\\(", subway2[, 'stat_name'])
unique(subway2[idx, 'stat_name'])

stat_name <- subway2[, 'stat_name']
tmp <- sapply(subway2[idx, 'stat_name'], strsplit, '\\(', USE.NAMES = FALSE)
stat_renamed <- sapply(tmp, function(x) x[1])
subway2[idx, 'stat_name'] <- stat_renamed
year <- format(subway2[, 'income_date'], "%Y")
month <- format(subway2[, 'income_date'], "%m")
subway2 <- cbind(subway2, year, month)

subname <- read.csv('c:/easy_r/subway_latlong.csv', header = TRUE, stringsAsFactors = FALSE, skip = 1, fileEncoding = 'UTF-8')
str(subname)
head(sort(unique(subname[, 'STATION_NM'])), 10)
Line <- tapply(subname[, 'STATION_NM'], subname[, 'LINE_NUM'], unique)
sapply(Line, head)
agg_fun <- function(vec, adt) {
    sub_Line <- dat[dat[, "stat_name"] %in% vec,]
    tot <- aggregate(on_tot ~ year + stat_name, sub_line, sum)
    return(tot)
}
total <- lapply(Line[1:8], FUN = agg_fun, dat = subway2)
df1 <- lapply(total, xtabs, fomula, on_tot ~ stat_name + year)
lapply(df1,head)
sapply(Line,head)
agg_fun<-function(vec,dat){
    subline<-dat[,"stat_name"]%in%vec,]
    tot<-aggregate(on_tot~year+stat_name,sub_Line,sum)
    return(tot)
}
total <- lapply(Line[1:8]),FUN=agg_fun,dat=subway2)
df1<-