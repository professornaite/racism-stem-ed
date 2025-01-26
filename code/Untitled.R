
library(dplyr)
racism <- read.csv("https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fapi.ies.ed.gov%2Feric%2F%3Fsearch%3D%2522racism%2522%26format%3Dcsv%26rows%3D2000&data=05%7C02%7CNathan.Alexander%40howard.edu%7C8666e9c08e67465df46208dc3d7ed649%7C02ac0c07b75f46bf9b133630ba94bb69%7C0%7C0%7C638452862174461348%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=s7DaDfOpFveclgrx9vrfuUZdVNg597ITtr5dsqdv7ic%3D&reserved=0")
View(racism)
racism %>% 
  count()

df2 <- as_tibble(racism)
str(df2)
dim(df2)
corp_racism <- corpus(df2$description)
corp_racism

# we can examine some of the articles by decade and consider key incidents in education/STEM education
# e.g., Coleman Report (year = 1966) related to race and class; analyze pubdate = t + 2
