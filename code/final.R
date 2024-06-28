library(dplyr)
library(bibliometrix)
install.packages("readtext")
library(readtext)

# run biblioshiny
bibliometrix::biblioshiny()

# wos database results
records <- readtext("https://raw.githubusercontent.com/professornaite/racism-stem-ed/main/data/wos/records.txt")

file <- "https://raw.githubusercontent.com/professornaite/racism-stem-ed/main/data/wos/records.txt"

raw.csv %>% 
  group_by("Publication.Type") %>% 
  count(Document.Type)

raw.csv %>% 
  group_by(Publication.Year) %>% 
  count(Publication.Year) %>%
  filter(Publication.Year < 2024) %>%
  mutate(percent = sum(n)/sum(count(Publication.Year)) %>% 
  print(n=50)

raw.csv %>% 
  group_by(Publication.Year) %>% 
  count(Publication.Year) %>% 
  

