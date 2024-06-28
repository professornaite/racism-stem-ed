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

# query articles  
  # written in English: English[LA]
  # journal articles: Journal Article[PT]
  # published in the last 10 years
racism_query <- "racism*[Title/Abstract] AND english[LA] AND Journal Article[PT] AND 2022:2023[DP]"

# return total documents retrieved
racism_query_result <- pmQueryTotalCount(query = racism_query, api_key = api_key)
racism_query_result$total_count

# download a subset of the collection of documents
D <- pmApiRequest(query = racism_query, limit = racism_query_result$total_count/7, api_key = NULL) # note subset by /7

D$query_translation


# download subset and transform data
install.packages("bibliometrix")
library(bibliometrix)
M <- convert2df(D, dbsource = "pubmed", format = "api")
results <- biblioAnalysis(M)
summary(results)
