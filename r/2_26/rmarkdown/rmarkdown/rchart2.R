library(knitr)
library(rCharts)
require(base64enc)
dt <- dTable(iris, spaginationType = "full_numbers")
dt$save('rChart1.html', standalone = TRUE)

