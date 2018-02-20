library(foreign) # SPSS 파일 로드
library(dplyr) # 전처리
library(ggplot2) # 시각화

library(readxl) # 엑셀 파일 불러오기
setwd("c://easy_r")
# 데이터 불러오기

raw_welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav", to.data.frame = T)
# 복사본 만들기

welfare <- raw_welfare
welfare <- rename(welfare,
                  sex = h10_g3, # 성별
                  birth = h10_g4, # 태어난 연도
                  marriage = h10_g10, # 혼인 상태
                  religion = h10_g11, # 종교
                  income = p1002_8aq1, # 월급
                  code_job = h10_eco9, # 직종 코드
                  code_region = h10_reg7) # 지역 코드
#### 09-5 ####
welfare$age <- 2015 - welfare$birth + 1 #age 09-3에서 추가


welfare <- welfare %>% #09-4에서 추가
    mutate(ageg = ifelse(age < 30, "young",
                       ifelse(age <= 59, "middle", "old")))
## -------------------------------------------------------------------- ##
sex_income <- welfare %>%
    filter(!is.na(income)) %>%
    group_by(ageg, sex) %>%
    summarise(mean_income = mean(income))

sex_income

ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex)) +
    geom_col() +
    scale_x_discrete(limits = c("young", "middle", "old"))

ggplot(data = sex_income, aes(x = ageg, y = mean_income, fill = sex)) +
    geom_col(position = "dodge") +
    scale_x_discrete(limits = c("young", "middle", "old"))


## -------------------------------------------------------------------- ##
# 성별 연령별 월급 평균표 만들기
sex_age <- welfare %>%
    filter(!is.na(income)) %>%
    group_by(age, sex) %>%
    summarise(mean_income = mean(income))

head(sex_age)

# 그래프 만들기
ggplot(data = sex_age, aes(x = age, y = mean_income, col = sex)) + geom_line()
