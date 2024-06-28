# step01-web of science
# install.packages("rwos")

## package is not available in the current version; install old version

install.packages("devtools")  # if required
devtools::install_github("juba/rwos")

library(remotes)
install_github("juba/rwos", force=TRUE)
library(rwos)
sid <- wos_authenticate()


# racism query
racism <- read.csv("https://www.webofscience.com/wos/woscc/summary/49695d2d-58e5-4edd-8b8a-6efe6850d735-df065e42/relevance/1")
racism
View(racism)
