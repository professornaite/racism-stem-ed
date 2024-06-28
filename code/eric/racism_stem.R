library(dplyr)

# eric database api = keyword racism and STEM
racism_stem <- read.csv("https://api.ies.ed.gov/eric/?search=%22racism%22%20AND%20%22stem%22&format=csv&rows=2000")
racism_stem
View(racism_stem)

# wos database results
library(readxl)
raw <- read.csv("data/wos/raw.csv")
raw

racism_stem_1997_2023_wos
View(racism_stem_1997_2023_wos)

# subset for journal articles only
str(racism_stem_1997_2003_wos)

racism_stem_1_200 <- read.csv("https://api.ies.ed.gov/eric/?search=racism%20and%20STEM&format=csv&start=1&rows=2000")
racism_stem_1_200

racism_stem_201_400 <- read.csv("https://api.ies.ed.gov/eric/?search=racism%20and%20STEM&format=csv&start=201&rows=2000")
racism_stem_201_400

racism_stem_401_600 <- read.csv("https://api.ies.ed.gov/eric/?search=racism%20and%20STEM&format=csv&start=401&rows=2000")
racism_stem_401_600


racism_stem_1997_2023_1_200 <- read.csv("https://api.ies.ed.gov/eric/?search=racism%20and%20stem%20pubyearmin%3A1997%20pubyearmax%3A2023&format=csv&start=1&rows=200")
racism_stem_1997_2023_1_200





# tokens of article titles
# corpus of descriptions
summary(corp_racism_and_stem_abstract_df1)
toks_corp_racism_and_stem_abstract_df1 <- tokens(corp_racism_and_stem_abstract_df1)
toks_corp_racism_and_stem_abstract_df1
# concordonance view
racism_and_stem_pattern <- kwic(toks_corp_racism_and_stem_abstract_df1, 
                    pattern = "racism") # pattern = racism and stem
View(racism_and_stem_pattern)
tail(racism_and_stem_pattern)
racism_and_stem_pattern %>% 
  group_by(docname) %>% 
  count() %>%
  arrange()




# tokens of descriptions
toks_description <- tokens(df$description)
toks_description

  # concordonance view for rac*
  rac_pattern <- kwic(toks_description, pattern = "rac*") # pattern = rac*
  View(rac_pattern)
  tail(rac_pattern)
  
  # concordonance view for racism*
  racism_pattern <- kwic(toks_description, pattern = "racism*") # pattern = rac*
  View(racism_pattern)
  tail(racism_pattern)
  
  # concordonance view for antiblack*
  antiblack_pattern <- kwic(toks_description, pattern = "antiblack*") # pattern = antiblack*
  View(antiblack_pattern)
  tail(antiblack_pattern)
  
  # pattern = topeka
  kw_description_topeka <- kwic(toks_description, pattern = "topeka")  # pattern = topeka
  kw_description_topeka
  tail(kw_description_topeka)
  
# filters by year
  
  kw_description_topeka <- kwic(toks_description, pattern = "topeka") %>%  # pattern = topeka
    filter(df$publicationdateyear < 2000)
  head(kw_description_black)
  # focus decades; analysis of additoinal terms that relate to pattern rac*
  
  
  ## summarize count of texts in patterns
  racism_pattern_2 <- as_tibble(racism_pattern)
  racism_pattern_2 %>% 
    count(docname) %>% 
    View() # use this code to highlight the number of articles that mention a word in context
  #  prioritize docs those that use a term more than twice 
  # there may be insights around motivations
  # these results will allow us to focus on the term-in-context and discuss its uses for the discusion section
  

  
  ## LEXICAL DISPERSION PLOTS
  
  # corp descriptions (abstracts) : corp_description
  df
  corp_description
  toks_corpus_description_subset <- 
    corpus_subset(corp_description, Year > 1949) %>% 
    tokens()
  kwic(toks_corpus_inaugural_subset, pattern = "american") %>% 
    textplot_xray()

df1$p

