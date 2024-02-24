# pubmedR package test
# keyword racism

# install packages
install.packages("devtools")
devtools::install_github("massimoaria/pubmedR")
install.packages("pubmedR")

# load libraries
library(pubmedR)

# api key
api_key <- rstudioapi::askForSecret("pubmedapi")
api_key
