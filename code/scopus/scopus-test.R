# scopus - test
# https://www.scopus.com/ access through institutional server
# generate API key at https://dev.elsevier.com/ 
# project tutorial: https://aurelien-goutsmedt.com/post/extracting-biblio-data-1/
# text minining documentation: https://dev.elsevier.com/tecdoc_text_mining.html
  # for use with DOIs

install.packages("devtools")
devtools::install_github("muschellij2/rscopus")

Elsevier_API <- rstudioapi::askForSecret("scopusapi")
Elsevier_API

library(rscopus)
library(dplyr)

rscopus::set_api_key(Elsevier_API)
# rscopus::get_api_key

# need an institutional token
insttoken <- "your_institutional_token"
insttoken <- inst_token_header(insttoken)

res2 = author_df(last_name = "Alexander", first_name = "Nathan", verbose = FALSE, general = FALSE)
res2

res
View(res)
