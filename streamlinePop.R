#code to streamline pop data frame
library(tidyverse)
library(magrittr)
pop <- read_csv("https://raw.githubusercontent.com/awpark/learnR/master/pop.csv")

pop %<>% drop_na(pop1970)
pop %<>% filter(county_fips>0)

pop %<>% select(-c(state_fips,county_fips,areaname,fipsst,fipsco,region,division,pop19904,pop20104,base20104))


write_csv(pop,path="pop.csv")
