#code to streamline pop data frame
library(tidyverse)
library(magrittr)
pop <- read_csv("https://raw.githubusercontent.com/awpark/learnR/master/pop.csv")

pop %<>% select(-c(state_fips,county_fips,areaname,fipsst,fipsco,region,division,pop19904,pop20104,base20104))
pop %<>% drop_na(pop1970)

pop2 <- pop
write_csv(pop2,path="pop2.csv")
