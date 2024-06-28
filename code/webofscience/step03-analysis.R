#step03-analysis in bibliometrix


install.packages("bibliometrix")

bibliometrix::biblioshiny()


# developer portal: https://developer.clarivate.com/ 
# code samples: https://github.com/clarivate?q=wosstarter&type=&language=&sort=
# wos R interface (old): https://github.com/juba/rwos
# extraction: https://www.youtube.com/watch?v=xKu6TknKIz0


## access WoS database through library site
# query 1: racism (Abstract) and Education Educational Research (Web of Science)
# query 1 link: https://www.webofscience.com/wos/woscc/summary/122d6dad-98a6-421d-949d-802bbaeef17a-ce9b34f2/relevance/1

# # https://www.bibliometrix.org/home/

# queries to be executed

# we also take care to the function of the server itself; so we consider the
# nuances between each of the potential categories and their returns
"rac*"
"race*"
"race"
"racial*"
"racial"
"racism*"
"racism"
"racist*"
"racist"
# provide table above reporting on differences in outputs (discuss system)

# racism (given the outputs/results from above)
"racism" AND "science"
"racism" AND "science technology"
"racism" AND "science, technology, engineering, and mathematics"
"racism" AND "science technology engineering and mathematics"
"racism" AND "science technology engineering mathematics"
"racism" AND "science technology mathematics"
"racism" AND "STEM"
# provide data on results by category

# analyze racism in context (using "in context" code)
