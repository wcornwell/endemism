---
  title: "endemism_genera_summary"
format: html
editor: visual
---
  
  {r}
library(tidyverse)
summary <- read_csv("intermediate_data/five_sources_summary.csv")

unclear <- summary[summary$current_knowledge == 'unclear', ]
unclear$reason <- NA

{r}
unclear$genus

unclear$current_knowledge[1] <- 'endemic' 
unclear$reason[1] <- 'ALA taxonomy error'

unclear$current_knowledge[2] <- 'non-endemic' 
unclear$reason[2] <- 'taxonomy error'


unclear$current_knowledge[3] <- 'endemic' 
unclear$reason[3] <- 'POWO data error'

unclear$reason[4] <- 'records from 1950s, PNG occurence uncertain'

unclear$current_knowledge[5] <- 'endemic' 
unclear$reason[5] <- 'POWO data error'

unclear$current_knowledge[6] <- 'endemic'
unclear$reason[6] <- 'Indo data error'

unclear$current_knowledge[7] <- 'endemic'
unclear$reason[7] <- 'POWO data error'

unclear$current_knowledge[8] <- 'non-endemic'
unclear$reason[8] <- 'NC occurence'

unclear$current_knowledge[9] <- 'non-endemic'
unclear$reason[9] <- 'taxonomic error - synonym Machaerina used'

unclear$current_knowledge[10] <- 'non-endemic'
unclear$reason[10] <- 'PNG native'

unclear$current_knowledge[11] <- 'endemic'
unclear$reason[11] <- 'ALA data/shapefile error'

unclear$current_knowledge[12] <- 'endemic'
unclear$reason[12] <- 'ALA data/shapefile error'

unclear$current_knowledge[13] <- 'endemic'
unclear$reason[13] <- 'ornamental plant in UK'

unclear$current_knowledge[14] <- 'endemic'
unclear$reason[14] <- 'taxonomic uncertainty - WCVP says 4 species, zimbabwe flora mentions only 1 accepted species'

unclear$current_knowledge[15] <- 'endemic'
unclear$reason[15] <- 'ng data error'

unclear$current_knowledge[16] <- 'non-endemic'
unclear$reason[16] <- 'taxonomy error, NZ species'

unclear$current_knowledge[17] <- 'endemic'
unclear$reason[17] <- 'introduced NZ and California'

unclear$current_knowledge[18] <- 'endemic'
unclear$reason[18] <- 'introduced India'

unclear$current_knowledge[19] <- 'non-endemic'
unclear$reason[19] <- 'species found in South America'

unclear$current_knowledge[20] <- 'endemic'
unclear$reason[20] <- 'introduced ornamentals in UK'

unclear$current_knowledge[21] <- 'non-endemic'
unclear$reason[21] <- 'species found in Africa, Americas, South Asia etc'

unclear$current_knowledge[22] <- 'endemic'
unclear$reason[22] <- 'taxonomic confusion, tasmania only'

unclear$current_knowledge[23] <- 'non-endemic'
unclear$reason[23] <- 'species found in Africa, Americas, South Asia etc'

unclear$current_knowledge[24] <- 'endemic'
unclear$reason[24] <- 'taxonomic error in indo data'

unclear$current_knowledge[25] <- 'non-endemic'
unclear$reason[25] <- 'found in americas'

unclear$current_knowledge[26] <- 'non-endemic'
unclear$reason[26] <- 'found in PNG POWO taxonomic confusion'

unclear$current_knowledge[27] <- 'endemic'
unclear$reason[27] <- 'POWO error'

unclear$current_knowledge[28] <- 'unclear'
unclear$reason[28] <- 'endemic based on API class - taxonomic differences in POWO'

unclear$current_knowledge[29] <- 'non-endemic'
unclear$reason[29] <- 'dist in South America'

unclear$current_knowledge[30] <- 'non-endemic'
unclear$reason[30] <- 'dist in PNG'

unclear$current_knowledge[31] <- 'endemic'
unclear$reason[31] <- 'introdced to india - POWO mismatch'

unclear$current_knowledge[32] <- 'endemic'
unclear$reason[32] <- 'ALA error (Georgiella species entered as Georgeantha'

unclear$current_knowledge[33] <- 'non-endemic'
unclear$reason[33] <- 'Madagascar distribution'

unclear$current_knowledge[34] <- 'endemic'
unclear$reason[34] <- 'introdced to New Zealand - POWO mismatch'

unclear$current_knowledge[35] <- 'unclear'
unclear$reason[35] <- 'not sure about the taxonomics here - justicia?'

unclear$current_knowledge[36] <- 'endemic'
unclear$reason[36] <- 'endemic to lord howe - record in NZ?'

unclear$current_knowledge[37] <- 'endemic'
unclear$reason[37] <- 'taxonomic confusion - unplaced in POWO'

unclear$current_knowledge[38] <- 'endemic'
unclear$reason[38] <- 'ALA data error'

unclear$current_knowledge[39] <- 'endemic'
unclear$reason[39] <- 'ALA data error'

unclear$current_knowledge[40] <- 'non-endemic'
unclear$reason[40] <- 'distribution in Chile'

unclear$current_knowledge[41] <- 'endemic'
unclear$reason[41] <- 'ALA data error'

unclear$current_knowledge[42] <- 'non-endemic'
unclear$reason[42] <- 'species found in Africa, Asia, Australia'

unclear$current_knowledge[43] <- 'endemic'
unclear$reason[43] <- 'Indo data error'

unclear$current_knowledge[44] <- 'non-endemic'
unclear$reason[44] <- 'species endemic to Norfolk Island'

unclear$current_knowledge[45] <- 'endemic'
unclear$reason[45] <- 'introduced to NZ and India'

unclear$current_knowledge[46] <- 'endemic'
unclear$reason[46] <- 'ALA data error'

unclear$current_knowledge[47] <- 'endemic'
unclear$reason[47] <- 'ALA data error'

unclear$current_knowledge[48] <- 'endemic'
unclear$reason[48] <- 'introduced to India'

unclear$current_knowledge[49] <- 'endemic'
unclear$reason[49] <- 'introduced to Czechia'

unclear$current_knowledge[50] <- 'non-endemic'
unclear$reason[50] <- 'species found in Americas and Australia'

unclear$current_knowledge[51] <- 'non-endemic'
unclear$reason[51] <- 'species found in Europe, Africa, Asia, Australia'

unclear$current_knowledge[52] <- 'endemic'
unclear$reason[52] <- 'WVCP data error'

unclear$current_knowledge[53] <- 'endemic'
unclear$reason[53] <- 'ALA data error'

unclear$current_knowledge[54] <- 'endemic'
unclear$reason[54] <- 'introduced to Great Britain'

unclear$current_knowledge[55] <- 'endemic'
unclear$reason[55] <- 'introduced to Great Britain'

unclear$current_knowledge[56] <- 'non-endemic'
unclear$reason[56] <- 'synonym for Ochrosia, found across SE & E asia' #Neisosperma

unclear$current_knowledge[57] <- 'non-endemic'
unclear$reason[57] <- 'synonym for Apostasia, found in SE Asia' #Niemeyera

unclear$current_knowledge[58] <- 'endemic'
unclear$reason[58] <- 'Limited PNG occurrence - introduced, flagged as basis of record invalid' #Oraniopsis

unclear$current_knowledge[59] <- 'non-endemic'
unclear$reason[59] <- 'Known to be native to Bolivia and Chile' #Orites

unclear$current_knowledge[60] <- 'non-endemic'
unclear$reason[60] <- 'Known to be native to Mexico and South America' #Orthrosanthus

unclear$current_knowledge[61] <- 'non-endemic'
unclear$reason[61] <- 'Cosmopolitan genera - synonym: Hemionitis' #Paraceterach

unclear$current_knowledge[62] <- 'endemic'
unclear$reason[62] <- 'Data error - single preserved specimen from PNG' #Peripentadenia

unclear$current_knowledge[63] <- 'non-endemic'
unclear$reason[63] <- 'synonym for Arthrochilus- single sp. in PNG' #Phoringopsis

unclear$current_knowledge[64] <- 'non-endemic'
unclear$reason[64] <- 'synonym for Phreatia' #Plexaure

unclear$current_knowledge[65] <- 'non-endemic'
unclear$reason[65] <- 'synonym for Caltha' #Psychrophila

unclear$current_knowledge[66] <- 'endemic'
unclear$reason[66] <- 'WCVP Data error - single 200 year old record in NZ' #Pyrorchis

unclear$current_knowledge[67] <- 'endemic'
unclear$reason[67] <- 'Data duplication of incorrect point' #Rhinerrhiza

unclear$current_knowledge[68] <- 'non-endemic'
unclear$reason[68] <- 'synonym for Phreatia' #Rhipidorchis

unclear$current_knowledge[69] <- 'endemic'
unclear$reason[69] <- 'Introduced and grown as an ornamental' #Rhodanthe

unclear$current_knowledge[70] <- 'endemic'
unclear$reason[70] <- 'Introduced into NZ, UK, & USA' #Rumicastrum


#Selliera
"Goodenia" %in% indo$Genus
unclear$current_knowledge[71] <- 'non-endemic'
unclear$reason[71] <- 'Synonym with Goodenia'

#Seorsus
unclear$current_knowledge[72] <- 'endemic'
unclear$reason[72] <- 'wcvp incorrect, found in PNG'


#Seringia
unclear$current_knowledge[73] <- 'endemic'
unclear$reason[73] <- 'Taxonomy mix up'

#Sersalisia
unclear$current_knowledge[74] <- 'non-endemic'
unclear$reason[74] <- 'Found in PNG and Malaysia as well'

#Solori
unclear$current_knowledge[75] <- 'non-endemic'
unclear$reason[75] <- 'Synonym with Brachypterum, found in southern Asia'

#Stawellia
unclear$current_knowledge[76] <- 'endemic'
unclear$reason[76] <- 'Outlier in Indo data, only one point'

#Stuartina
unclear$current_knowledge[77] <- 'endemic'
unclear$reason[77] <- 'Introduced to Britain'

#Swainsona
unclear$current_knowledge[78] <- 'endemic'
unclear$reason[78] <- 'Small numbers outside, botanical gardens'


"Aleurites" %in% nc$Genre
unclear$current_knowledge[79] <- 'non-endemic'
unclear$reason[79] <- 'Synonym with Aleurites'

"Ardisia" %in% nz$Genus
unclear$current_knowledge[80] <- 'non-endemic'
unclear$reason[80] <- 'Synonym with Ardisia'

#Trichocline
unclear$current_knowledge[81] <- 'non-endemic'
unclear$reason[81] <- 'Found in South America as well'

#Triodia
unclear$current_knowledge[82] <- 'endemic'
unclear$reason[82] <- 'Error in occurrence data, single occurrences outside Australia (oriental/botanical gardens)'

#Tristania
unclear$current_knowledge[83] <- 'endemic'
unclear$reason[83] <- 'Changes in species within genus'

"Websteria" %in% indo$Genus
unclear$current_knowledge[84] <- 'non-endemic'
unclear$reason[84] <- 'Native to US and found else where in the world'

"Westringia" %in% ng$Genus
unclear$current_knowledge[85] <- 'non-endemic'
unclear$reason[85] <- 'Found in NZ, ALA incorrect'

#Wittsteinia
unclear$current_knowledge[86] <- 'non-endemic'
unclear$reason[86] <- 'Found in New Caledonia and Papua New Guinea'

"Yakirra foliolosa" %in% indo$Name
unclear$current_knowledge[87] <- 'non-endemic'
unclear$reason[87] <- 'Found in Myanmar'


summary$reason <- NA


summary <- summary[summary$current_knowledge != "unclear", ]

summary_final <- rbind(summary, unclear, by = 'genus', all = TRUE)

summary_final <- summary_final[order(summary_final$genus), ]

unclear1 <- summary_final[summary_final$current_knowledge == 'unclear', ]

write.csv(summary_final, file = 'intermediate_data/summary_current.csv', row.names = FALSE)

write.csv(unclear1, file = 'intermediate_data/unclears_for_will.csv', row.names = F)
