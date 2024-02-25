# step01-web of science
# developer portal
# code samples: https://github.com/clarivate?q=wosstarter&type=&language=&sort=
# wos R interface (old): https://github.com/juba/rwos
# search: https://www.google.com/search?client=firefox-b-1-d&q=web+of+science+in+R
# https://www.youtube.com/watch?v=xKu6TknKIz0

install.packages("devtools")  # if required
devtools::install_github("juba/rwos")

library(rwos)
sid <- wos_authenticate()
