# ERIC database API

require(tidyverse)
require(dplyr)

racism_stem <- read_csv("https://api.ies.ed.gov/eric/?search=subject%3A%20%22racism%22%20AND%20subject%20%22stem%22&format=csv&rows=200")
racism_stem
