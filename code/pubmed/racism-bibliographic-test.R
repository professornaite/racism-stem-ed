# pubmedR package test
# keyword racism

# install packages
install.packages("devtools")
devtools::install_github("massimoaria/pubmedR")
install.packages("pubmedR")

# load libraries
library(pubmedR)

# api key: https://www.ncbi.nlm.nih.gov/account/settings/
api_key <- rstudioapi::askForSecret("pubmedapi")
api_key

query <- "bibliometric*[Title/Abstract] AND english[LA] AND Journal Article[PT] AND 2000:2020[DP]"
