
## RQ3 - lexical patterns


## keywords in context
df1_2018_2023 <- df1 %>% 
  filter(publicationdateyear > 2018 & publicationdateyear < 2024) 

df1_2018_2023_corp_abstract <- corpus(df1_2018_2023$description)

# LEXICAL PATTERNS
# keywords in context

library(quanteda)
library("quanteda.textmodels")
library("quanteda.textstats")
library("quanteda.textplots")
M4_abstract <- corpus(M4$AB)
M4_abstract
toks_M4_abstract <- corpus_subset(M4_abstract) %>% 
  tokens()
kwic(toks_M4_abstract, pattern = "racism") %>% 
  textplot_xray()

M1_corp_abstract <- corpus(M1_dup$AB)
M1_corp
toks_M1_corp_abstract <- corpus_subset(M1_corp_abstract) %>% 
  tokens()
kwic(toks_M1_corp_abstract, pattern = "racism") %>% 
  textplot_xray()

toks_corp_racism_and_stem_abstract_df1 <- corpus_subset(df1_2018_2023_corp_abstract) %>% 
  tokens()
  
kwic(toks_corp_racism_and_stem_abstract_df1, pattern = "racism") %>% 
  textplot_xray()
