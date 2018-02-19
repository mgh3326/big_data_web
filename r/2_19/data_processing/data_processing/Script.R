install.packages("dplyr")
library(dplyr)
setwd("c:\\easy_r")
exam <- read.csv("csv_exam.csv")
exam
exam %>% filter(class == 1)
exam %>% filter(class == 2)
exam %>% filter(class != 1)
exam %>% filter(class != 3)
exam %>% filter(math > 50)
exam %>% filter(math < 50)
exam %>% filter(math >= 80)
exam %>% filter(math <= 80)

exam %>% filter(class == 1 & math > 50)
exam %>% filter(class == 2 & math >= 80)
exam %>% filter(math >= 90 | english >= 90)
exam %>% filter(science < 50 | english < 90)
exam %>% filter(class == 1 | class == 3 | class == 5)
exam %>% filter(class %in% c(1, 3, 5))
class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)
mean(class1$math)
mean(class2$math)
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
#Q 아침 과제 혼자서 해보기 (6장)
#Q1
mpg1 <- mpg %>% filter(displ <= 4)
mpg2 <- mpg %>% filter(displ >= 5)
mean(mpg1$hwy)
mean(mpg2$hwy)
#mpg1이 더 큰것을 알수있다.
#Q2
mpg3 <- mpg %>% filter(manufacturer == "audi")
mpg4 <- mpg %>% filter(manufacturer == "toyota")
mean(mpg3$cty)
mean(mpg4$cty)
#mpg4가 더 큰것을 알수있다.
#Q3
mpg5 <- mpg %>% filter(manufacturer == "chevrolet" | manufacturer == "ford" | manufacturer == "honda")
mean(mpg5$hwy)

exam %>% select(math)
exam %>% select(english)
exam %>% select(class, math, english)
exam %>% select(-math)
exam %>% select(-math, - english)
exam %>% filter(class == 1) %>% select(english)
exam %>%
    filter(class == 1) %>%
    select(english)
exam %>%
    select(id, math) %>%
    head
exam %>%
    select(id, math) %>%
    head(10)

#혼자서 해보기
#Q1
mpg %>% select(class, cty)
#Q2
mpg6 <- mpg %>%
    filter(class == "suv") %>%
    select(cty)
mpg7 <- mpg %>%
    filter(class == "compact") %>%
    select(cty)
mean(mpg6$cty)
mean(mpg7$cty)
#compact가 더 큼을 알수 있습니다.

exam %>% arrange(math)
exam %>% arrange(desc(math))
exam %>% arrange(class, math)
#혼자서 해보기
mpg8 <- mpg %>% filter(manufacturer == "audi")
mpg8 %>% arrange(desc(hwy)) %>% head()

exam %>% mutate(total = math + english + science) %>% head
exam %>%
    mutate(total = math + english + science, mean = (math + english + science) / 3) %>% head
exam %>%
    mutate(test = ifelse(science >= 60, "pass", "fail")) %>% head
exam %>%
    mutate(total = math + english + science) %>% arrange(total) %>% head

#혼자서 해보기
#Q1
mpg_copy <- mpg %>% mutate(total = hwy + cty) %>% head
mpg_copy
#Q2
mpg_copy %>% mutate(total_var = (hwy + cty) / 2) %>% head
#Q3
mpg_copy %>% mutate(total_var = (hwy + cty) / 2) %>% arrange(total_var) %>% head(3)
#Q4


exam %>% summarise(mean_math = mean(math))
exam %>%
    group_by(class) %>%
    summarise(mean_math = mean(math))
exam %>%
    group_by(class) %>%
    summarise(mean_math = mean(math),
              sum_math = sum(math),
              median_math = median(math),
              n = n())
mpg %>%
    group_by(manufacturer, drv) %>%
    summarise(mean_city = mean(cty)) %>% head(10)

#dplyr 조합하기
#문제
#1
mpg %>%
    group_by(manufacturer, drv)
#2
mpg %>%
    group_by(manufacturer, drv) %>%
    filter(class == "suv")
#3
mpg %>%
    group_by(manufacturer, drv) %>%
    filter(class == "suv") %>% mutate(total = hwy + cty)

#4
mpg %>%
    group_by(manufacturer, drv) %>%
    filter(class == "suv") %>% mutate(total = hwy + cty) %>%
    summarise(mean_total = mean(total))
#5
mpg %>%
    group_by(manufacturer, drv) %>%
    filter(class == "suv") %>% mutate(total = hwy + cty) %>%
    summarise(mean_total = mean(total)) %>% arrange(desc(mean_total))
#6
mpg %>%
    group_by(manufacturer, drv) %>%
    filter(class == "suv") %>% mutate(total = hwy + cty) %>%
    summarise(mean_total = mean(total)) %>% arrange(desc(mean_total)) %>% head(5)

#혼자서 해보기
#Q1
mpg %>%
    group_by(class) %>%
    summarise(mean_cty = mean(cty))
#Q2
mpg %>%
    group_by(class) %>%
    summarise(mean_cty = mean(cty)) %>% arrange((mean_cty))
#Q3
mpg %>% arrange(hwy) %>% head(3)
#Q4 #아직못함
mpg %>% filter(class == "compact") %>%
    #summarise(mean_math = mean(math),
    #sum_math = sum(math),
    #median_math = median(math),
    #n = n())

    test1 <- data.frame(id = c(1, 2, 3, 4, 5), midterm = c(60, 80, 70, 90, 85))
test2 <- data.frame(id = c(1, 2, 3, 4, 5), midterm = c(70, 83, 65, 95, 80))
total <- left_join(test1, test2, by = "id")
total
name <- data.frame(class = c(1, 2, 3, 4, 5), teacher = c("kim", "lee", "park", "choi", "jung"))
name
exam_new <- left_join(exam, name, by = "class")
exam_new

group_a <- data.frame(id = c(1, 2, 3, 4, 5), test = c(60, 80, 70, 90, 85))
group_b <- data.frame(id = c(6, 7, 8, 9, 10), test = c(70, 83, 65, 95, 80))

group_all <- bind_rows(group_a, group_b)
group_all

#혼자서 해보기
fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringAsFactor = F)
fuel
#Q1
mpg %>% head(5)
total <- left_join(mpg, fuel, by = "fl")

#분석도전
#문제1
midwest %>% mutate(total = poptotal) %>% head
