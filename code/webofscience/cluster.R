library(readr)
library(dplyr)
clusters_june29_dim_data <- 
  read_csv("~/Dropbox/Projects/racism-stem-ed/data/wos/clusters-june29-dim-data.csv")
View(clusters_june29_dim_data)

df <- clusters_june29_dim_data
str(df)
df %>% 
  rename(dim1 = Dim.1,
         dim2 = Dim.2) -> df
plot(df$dim1, df$dim2)
