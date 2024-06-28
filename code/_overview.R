# rac* and racism keyword patterns in STEM tags

# packages and libraries
install.packages("readtext")
library(readtext)
install.packages("spacyr")

install.packages("quanteda")
library(quanteda)
install.packages("quanteda.textmodels")
install.packages("quanteda.textstats")
install.packages("quanteda.textplots")
remotes::install_github("kbenoit/quanteda.dictionaries")
library(quanteda.dictionaries)
library("quanteda.textmodels")
library("quanteda.textstats")
library("quanteda.textplots")

require(tidyverse)
library(dplyr)
library(tidyr)
library(ggplot2)

getwd()
############################ create data frames for analysis and comparison

## markers: 
# full data set no restrictions < 2023
# restricted data by time:
#### 2001: no child left behind
#### 2015: every study succeeds act

## eric notes: 
# peer reviewed only selected

## wos: notes:
#

# check results and dimensions of each data frame by time-variance dim
df_ %>% 
  filter(peerreviewed=TRUE) %>% 
  filter(publicationyear < 2024) %>% 
  dim()

df_ %>% 
  filter(peerreviewed=TRUE) %>% 
  filter(publicationdateyear > 2001 & publicationdateyear < 2024) %>% 
  dim()

df_ %>% 
  filter(peerreviewed=TRUE) %>% 
  filter(publicationdateyear > 2015 & publicationdateyear < 2024) %>% 
  dim()

########## Process dfs across eric and wos databases

# df1 <- eric database on racism AND stem
df1 <- read.csv("https://api.ies.ed.gov/eric/?search=racism%20AND%20stem&format=csv&rows=2000")
df1
df1 <- as_tibble(df1)
str(df1)
dim(df1)

corp_racism_and_stem_title_df1 <- corpus(df1$title)
corp_racism_and_stem_title_df1

corp_racism_and_stem_abstract_df1 <- corpus(df1$description)
corp_racism_and_stem_abstract_df1

# df2 <- eric database on racism stem
df2 <- read.csv("https://api.ies.ed.gov/eric/?search=racism%20stem&format=csv&rows=2000")
df2 <- as_tibble(df2)
str(df2)
dim(df2)

corp_racism_stem_title_df2 <- corpus(df2$title)
corp_racism_stem_title_df2

corp_racism_stem_abstract_df2 <- corpus(df2$description)
corp_racism_stem_abstract_df2

# df3 <- eric database on rac* stem
df3 <- read.csv("https://api.ies.ed.gov/eric/?search=rac%2A%20stem&format=csv&rows=2000")
df3
df3 <- as_tibble(df3)
str(df3)
dim(df3)

corp_rac_stem_title_df3 <- corpus(df3$title)
corp_rac_stem_title_df3

corp_rac_stem_abstract_df3 <- corpus(df3$description)
corp_rac_stem_abstract_df3

###################### Testing files for function

# count of sentences in each corp
summary(corp_racism_and_stem_abstract_df1) %>% 
  count(Sentences) %>% 
  plot()

summary(corp_racism_stem_abstract_df2) %>% 
  count(Sentences) %>% 
  plot()

summary(corp_rac_stem_abstract_df3) %>% 
  count(Sentences) %>% 
  plot()

