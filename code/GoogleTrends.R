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



# racism since 2004
racism2004 <-gtrends(c("racism"), time= "2004-01-01 2023-12-31", geo = "US")
plot(racism2004)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/racism2004.jpeg") # save plot
plot(racism10year)
dev.off()

# STEM since 2001
stem2004 <-gtrends(c("STEM"), time= "2004-01-01 2023-12-31", geo = "US")
plot(stem2004)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/stem2004.jpeg") # save plot
plot(racism10year)
dev.off()

# stem and racism
stem.racism<-gtrends(c("STEM", "racism"), time= "2004-01-01 2023-12-31", geo = "US")
plot(stem.racism)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/stem-racism.jpeg") # save plot
plot(covid.racism)
dev.off()


# covid
covid.2013.01.01<-gtrends(c("covid"), time= "2013-01-01 2023-12-31", geo = "US")
plot(covid.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/covid-10year.jpeg") # save plot
plot(covid.2013.01.01)
dev.off()

# george floyd
george.floyd.2013.01.01<-gtrends(c("george floyd"), time= "2013-01-01 2023-12-31", geo = "US")
plot(george.floyd.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/george-floyd-10year.jpeg") # save plot
plot(george.floyd.2013.01.01)
dev.off()

# police
police.2013.01.01<-gtrends(c("police"), time= "2013-01-01 2023-12-31", geo = "US")
plot(police.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/police-10year.jpeg") # save plot
plot(police.2013.01.01)
dev.off()

#policing
policing.2013.01.01<-gtrends(c("policing"), time= "2013-01-01 2023-12-31", geo = "US")
plot(policing.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/policing-10year.jpeg") # save plot
plot(policing.2013.01.01)
dev.off()

#race
race.2013.01.01<-gtrends(c("race"), time= "2013-01-01 2023-12-31", geo = "US")
plot(race.2013.01.01)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/race-10year.jpeg") # save plot
plot(race.2013.01.01)
dev.off()




# covid and police
covid.police<-gtrends(c("covid", "police"), time = "2013-01-01 2023-12-31", geo = "US")
plot(covid.police)
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/covid-police-10year.jpeg") # save plot
plot(covid.police)
dev.off()


# functions for efficiency
plot_trend<-function(keyword_string){
  data<-gtrends(c(keyword_string), time= "2013-01-01 2023-12-31", geo = "US")
  time_trend<-data$interest_over_time %>%
    mutate(hits=ifelse(hits=="<1",0.5,hits),
           date=as.Date(date),
           keyword=factor(keyword, levels = keyword_string))
  plot<-ggplot(data=time_trend, aes(x=date, y=as.numeric(hits), color=keyword)) +
    geom_smooth(method="loess",span=0.4, se=FALSE) +
    # geom_vline(xintercept = as.numeric(as.Date("2023-12-31"))) +
    theme_bw() +
    # scale_y_continuous(breaks = NULL) +
    theme(legend.position = "right",
          legend.title = element_blank(),
          legend.text=element_text(size=10),
          axis.title.x=element_blank(),
          axis.title.y=element_blank())
  return(plot)
}

plot1<-plot_trend(keyword_string = c("racism","stem")) + xlab("Dose (mg)") + ylab("Teeth length")
plot1 

four.terms.raci<-plot_trend(keyword_string = c("racist", 
                                     "racism", 
                                     "racial",
                                     "racialization"))
four.terms.raci
jpeg(file= "/Users/nathanalexander/Dropbox/Projects/racism-stem-ed/output/plots-google-trends/four.terms.raci.jpeg") # save plot
plot(four.terms.raci)
dev.off()
