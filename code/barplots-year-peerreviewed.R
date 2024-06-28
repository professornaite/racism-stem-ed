### ggpubr # https://rpkgs.datanovia.com/ggpubr/

install.packages("ggpubr")
library(ggpubr)


# Histogram plot with mean lines and marginal rug
# :::::::::::::::::::::::::::::::::::::::::::::::::::
# Change outline and fill colors by groups ("sex")
# Use custom color palette
df1.barplot <- df1 %>% filter(publicationdateyear > 2001 & publicationdateyear < 2024)
gghistogram(df1.barplot, x = "publicationdateyear",
            add = "mean", rug = TRUE,
            color = "peerreviewed", fill = "peerreviewed",
            palette = c("#00AFBB", "#E7B800"))

df2.barplot <- df2 %>% filter(publicationdateyear > 2001 & publicationdateyear < 2024)
gghistogram(df2.barplot, x = "publicationdateyear",
            add = "mean", rug = TRUE,
            color = "peerreviewed", fill = "peerreviewed",
            palette = c("#00AFBB", "#E7B800"))

df3.barplot <- df3 %>% filter(publicationdateyear > 2001 & publicationdateyear < 2024)
gghistogram(df3.barplot, x = "publicationdateyear",
            add = "mean", rug = TRUE,
            color = "peerreviewed", fill = "peerreviewed",
            palette = c("#00AFBB", "#E7B800"))


# ordered bar plots
ggbarplot(df3.barplot, x = "peerreviewed", y = "publicationdateyear",
          fill = "cyl",               # change fill color by cyl
          color = "white",            # Set bar border colors to white
          palette = "jco",            # jco journal color palett. see ?ggpar
          sort.val = "desc",          # Sort the value in dscending order
          sort.by.groups = FALSE,     # Don't sort inside each group
          x.text.angle = 90           # Rotate vertically x axis texts
)
