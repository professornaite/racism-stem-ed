# ERIC database API

# test of race and racism in STEM tags

require(quanteda)
require(tidyverse)
require(dplyr)

racism_stem_v2 <- read.csv("https://api.ies.ed.gov/eric/?search=%22racism%22%20AND%20%22stem%22&format=csv&rows=2000")
racism_stem_v2
View(racism_stem_v2)

df <- as_tibble(racism_stem_v2)
str(df)
dim(df)

# corpus of article titles
print(df$title)
corp_title <- corpus(df$title)
print(corp_title)
summary(corp_title)

# corpus of descriptions
corp_description <- corpus(df$description)
summary(corp_description)

# tokens of descriptions
toks_description <- tokens(df$description)
toks_description

  # concordonance view
  kw_description <- kwic(toks_description, pattern = "rac*") # pattern = rac*
  tail(kw_description)
  
  View(kw_description)
  
  # pattern = black
  kw_description_black <- kwic(toks_description, pattern = "black") %>% 
    filter(df$publicationdateyear < 2000)
  head(kw_description_black)
  
  
  # focus decades; analysis of additoinal terms that relate to pattern rac*
  
