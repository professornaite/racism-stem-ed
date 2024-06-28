
## RQ3 - lexical patterns


## keywords in context
df1_2018_2023 <- df1 %>% 
  filter(publicationdateyear > 2018 & publicationdateyear < 2024) 

df1_2018_2023_corp_abstract <- corpus(df1_2018_2023$description)
  
toks_corp_racism_and_stem_abstract_df1 <- corpus_subset(df1_2018_2023_corp_abstract) %>% 
  tokens()
  
kwic(toks_corp_racism_and_stem_abstract_df1, pattern = "racism") %>% 
  textplot_xray()
