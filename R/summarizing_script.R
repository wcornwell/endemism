library(tidyverse)

ww<-read_csv("intermediate_data/wip_endemism.csv")
ww<-select(ww,-indo)

indo <- read.csv("data/other_countries_floras/oo_377596.csv")
indo_non_aus<-filter(indo,!grepl("Aus",Country))
indo_non_aus<-filter(indo_non_aus,!grepl("Sin",Country)) #there seem to be problems with the Singapore data
ww$indo2<-ww$genus %in% indo_non_aus$Genus

ww %>%
  select(nz,nc,ng,wcvp,indo2)->tst
ww$rowsums<-rowSums(tst)

ww$current_knowledge<-case_when(ww$rowsums>=2 ~ "non-endemic",
          ww$rowsums==1 ~ "unclear",
          ww$rowsums==0 ~ "endemic"
          )

table(ww$current_knowledge)
write_csv(ww,"intermediate_data/five_sources_summary.csv")
