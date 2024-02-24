# pubmedR package test
# keyword racism

# install packages
install.packages("devtools")
devtools::install_github("massimoaria/pubmedR")
install.packages("pubmedR")

# load libraries
library(pubmedR)

# api key
pubmedapi <- rstudioapi::askForSecret("pubmedapi")
api_key <- "pubmedabi"
