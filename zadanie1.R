#Jaki jest najstarszy film Woody'ego Allena dostępny na Netflixie?


library(dplyr)
library(stringr)

dane %>%
  filter(Series.or.Movie == "Movie") %>%
  filter(str_detect(Director, "Woody Allen")) %>%
  mutate(Release.Date.Clean = as.Date(Release.Date, format="%m/%d/%Y")) %>%
  filter(!is.na(Netflix.Release.Date) & Netflix.Release.Date != "") %>%
  arrange(Release.Date.Clean) %>%
  select(Title, Director, Release.Date, IMDb.Score) %>%
  head(1)

  
  