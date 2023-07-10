library(tidyverse)

ww<-read_csv("intermediate_data/wip_endemism.csv")
ww<-select(ww,-indo)

indo <- read.csv("data/other_countries_floras/oo_377596.csv")
indo_non_aus<-filter(indo,!grepl("Aus",Country))
indo_non_aus<-filter(indo_non_aus,!grepl("Sin",Country)) #there seem to be problems with the Singapore data
ww$indo2<-ww$genus %in% indo_non_aus$Genus

ala<-read_csv("all_ala.csv")
  group_by(ala,genus) %>%
    summarise(prop_aus=(sum(countryCode=="AU",na.rm=T)/sum(!is.na(countryCode))),
              n=sum(!is.na(countryCode)))->sum_ala

ww<-left_join(ww,sum_ala)
ww %>%
  mutate(ala=prop_aus<0.99)->ww

ww %>%
  select(nz,nc,ng,wcvp,indo2,ala)->tst
ww$rowsums<-rowSums(tst)

ww$current_knowledge<-case_when(ww$rowsums>=2 ~ "non-endemic",
          ww$rowsums==1 ~ "unclear",
          ww$rowsums==0 ~ "endemic"
          )

table(ww$current_knowledge)
write_csv(ww,"intermediate_data/five_sources_summary.csv")

gen_int<-read_csv("ala_all_genera_of_interest.csv")

only_int<-filter(ww,current_knowledge %in% c("unclear","endemic"))

filter(gen_int,genus %in% only_int$genus) %>%
  left_join(select(only_int,genus,current_knowledge)) %>%
  write_csv("locations_endemic_genera.csv")
  

