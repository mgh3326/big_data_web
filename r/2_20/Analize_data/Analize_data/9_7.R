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
#### 09-7 ####

class(welfare$sex)
table(welfare$sex)

# 이상치 확인
table(welfare$sex)

# 이상치 결측 처리
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex)

# 결측치 확인
table(is.na(welfare$sex))


# 성별 항목 이름 부여
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")
table(welfare$sex)
qplot(welfare$sex)


## -------------------------------------------------------------------- ##
class(welfare$income)


class(welfare$code_job)

table(welfare$code_job)
#전처리
library(readxl)
list_job <- read_excel("Koweps_Codebook.xlsx", col_names = T, sheet = 2)
head(list_job)
dim(list_job)
welfare <- left_join(welfare, list_job, id = "code_job")
welfare %>%
    filter(!is.na(code_job)) %>%
    select(code_job, job) %>%
    head(10)

## -------------------------------------------------------------------- ##
# 남성 직업 빈도 상위 10개 추출
job_male <- welfare %>%
    filter(!is.na(job) & sex == "male") %>%
    group_by(job) %>%
    summarise(n = n()) %>%
    arrange(desc(n)) %>%
    head(10)

job_male

# 여성 직업 빈도 상위 10개 추출
job_female <- welfare %>%
    filter(!is.na(job) & sex == "female") %>%
    group_by(job) %>%
    summarise(n = n()) %>%
    arrange(desc(n)) %>%
    head(10)

job_female

# 남성 직업 빈도 상위 10개 직업
ggplot(data = job_male, aes(x = reorder(job, n), y = n)) +
    geom_col() +
    coord_flip()

# 여성 직업 빈도 상위 10개 직업
ggplot(data = job_female, aes(x = reorder(job, n), y = n)) +
    geom_col() +
    coord_flip()
