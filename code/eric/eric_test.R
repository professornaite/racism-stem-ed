# ERIC database API

install.packages("tidyverse")
require(tidyverse)
require(dplyr)

racism_stem <- read_csv("https://api.ies.ed.gov/eric/?search=subject%3A%20%22racism%22%20AND%20subject%20%22stem%22&format=csv&rows=200")
racism_stem
View(racism_stem)

racism <- read_csv("https://api.ies.ed.gov/eric/?search=source%3A%20%22racism%22&format=csv&rows=200")
racism
View(racism)

write.csv(racism, "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/data/eric_output/racism_feb26.csv")


racism_racist_stem <- read_csv("https://api.ies.ed.gov/eric/?search=racism%20AND%20racist%20AND%20stem&format=csv&rows=200")
racism_racist_stem_pr <- read_csv("https://api.ies.ed.gov/eric/?search=racism%20AND%20racist%20AND%20stem&format=csv&rows=200&fields=peerreviewed")

racism_racist_stem
racism_racist_stem_pr

racism_racist_stem$pr = racism_racist_stem_pr
df <- racism_racist_stem %>% 
  filter(peerreviewed == TRUE)
df
