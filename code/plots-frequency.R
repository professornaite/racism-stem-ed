

# frequency plots

dfmat_racism_stem <- corpus_subset(corp_racism_and_stem) |> 
  tokens(remove_punct = TRUE) |>
  tokens_remove(pattern = stopwords('english')) |>
  dfm() |>
  dfm_trim(min_termfreq = 10, verbose = FALSE)
set.seed(1)
textplot_wordcloud(dfmat_racism_stem)

# text stats freqency

install.packages("quanteda.textstats")
library(quanteda.textstats)
tstat_freq_racism_stem <- textstat_frequency(dfmat_racism_stem, n = 100)

ggplot(tstat_freq_racism_stem, aes(x = frequency, y = reorder(feature, frequency))) +
  geom_point() + 
  labs(x = "Frequency", y = "Feature")

