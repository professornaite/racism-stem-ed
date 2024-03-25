# ERIC database API

# test of race and racism in STEM tags

install.packages("tidyverse")
install.packages("quanteda")
library(quanteda)
require(tidyverse)
require(dplyr)

racism_stem_v2 <- read.csv("https://api.ies.ed.gov/eric/?search=%22racism%22%20AND%20%22stem%22&format=csv&rows=2000")
racism_stem_v2
View(racism_stem_v2)

