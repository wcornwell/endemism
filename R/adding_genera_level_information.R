# intermediate data create

library(tidyverse)

# read in
aus <-
  read_csv("data/australian_flora/genus_level_endemism_estimate.csv")
aus_end <- filter(aus, prop_endemic > 0.99)

#new caledonia example

nc <-
  read_csv("data/other_countries_floras/Florical_vers_7_I_2022.csv")

# add column to indicate that the genera is in the NC dataset

aus_end$new_caledonia <- aus_end$genus %in% nc$Genre

#add other columns here
#
#
#


#write current data to file

write_csv(aus_end,
          "intermediate_data/putative_aus_endemic_genera.csv")
