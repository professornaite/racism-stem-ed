# ERIC database API

# test of race and racism in STEM tags

require(quanteda)
require(tidyverse)
require(dplyr)
install.packages("pdftools")
install.packages("streamR")
require(readtext)

racism_stem_v2 <- read.csv("https://api.ies.ed.gov/eric/?search=%22racism%22%20AND%20%22stem%22&format=csv&rows=2000")
racism_stem_v2
View(racism_stem_v2)

