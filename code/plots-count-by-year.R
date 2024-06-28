


# Box plots with jittered points
# :::::::::::::::::::::::::::::::::::::::::::::::::::
# Change outline colors by groups: dose
# Use custom color palette
# Add jitter points and change the shape by groups

df1.boxplot <- df1 %>% 
  filter(publicationdateyear > 2001 & publicationdateyear < 2024) 
df1.boxplot

df1 %>% 
  count(publicationdateyear) %>% 
  rename(count = n) %>%  
  plot()

df2 %>% 
  count(publicationdateyear) %>% 
  rename(count = n) %>%  
  plot()

df3 %>% 
  count(publicationdateyear) %>% 
  rename(count = n) %>%  
  mutate(prop = count/sum(count)) %>% 
  print(n = 50)


## takeaway - various historical documents are missing from a host of the results


df1.boxplot$count <- 
  
p <- ggboxplot(df1.boxplot, x = "publicationdateyear", y = "len",
               color = "dose", palette =c("#00AFBB", "#E7B800", "#FC4E07"),
               add = "jitter", shape = "dose")
p