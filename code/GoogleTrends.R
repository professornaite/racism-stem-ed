# Text mining racism corpora

# Google trends data on keywords
# keywords: covid, george floyd, police, policing, race, racism

install.packages("gtrendsR")
# load libraries
library(dplyr)
library(magrittr)
library(gtrendsR)
library(knitr)
library(ggplot2)
library(patchwork)

# gather country codes and names
data(countries)
countries %>% 
  filter(country_code == "US")

# covid
covid.2013.01.01<-gtrends(c("covid"), time= "2013-01-01 2023-12-31", geo = "US")
plot(covid.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/covid-10year.jpeg") # save plot
plot(covid.police)
dev.off()

# george floyd
george.floyd.2013.01.01<-gtrends(c("george floyd"), time= "2013-01-01 2023-12-31", geo = "US")
plot(george.floyd.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/george-floyd-10year.jpeg") # save plot
plot(covid.police)
dev.off()

# police
police.2013.01.01<-gtrends(c("police"), time= "2013-01-01 2023-12-31", geo = "US")
plot(police.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/police-10year.jpeg") # save plot
plot(covid.police)
dev.off()

#policing
policing.2013.01.01<-gtrends(c("policing"), time= "2013-01-01 2023-12-31", geo = "US")
plot(policing.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/policing-10year.jpeg") # save plot
plot(covid.police)
dev.off()

#race
race.2013.01.01<-gtrends(c("race"), time= "2013-01-01 2023-12-31", geo = "US")
plot(race.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/race-10year.jpeg") # save plot
plot(covid.police)
dev.off()

# racism (10-year trend)
racism.2013.01.01<-gtrends(c("racism"), time= "2013-01-01 2023-12-31", geo = "US")
plot(racism.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/racism-10year.jpeg") # save plot
plot(covid.police)
dev.off()

# covid and racism
covid.racism<-gtrends(c("covid", "racism"), time= "2013-01-01 2023-12-31", geo = "US")
plot(covid.racism)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/covid-racism-10year.jpeg") # save plot
plot(covid.police)
dev.off()

# covid and police
covid.police<-gtrends(c("covid", "police"), time = "2013-01-01 2023-12-31", geo = "US")
plot(covid.police)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-trends/covid-police-10year.jpeg") # save plot
plot(covid.police)
dev.off()

getwd()

ggplot(racism.2013.01.01, aes(x=date, y=hits, colour=keyword)) +
  geom_line() +
  geom_vline(xintercept=as.Date("2019-06-21")) +
  geom_vline(xintercept=as.Date("2019-12-21")) 

