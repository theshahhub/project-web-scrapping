library(rvest)
library(dplyr)
library(robotstxt)

link <-
  'https://www.digitaltrends.com/gaming/50-best-games-of-all-time/'
  

web <- read_html(link)
name <- web %>% html_nodes(".b-media__title--small") %>%html_text()
View(names)
years <- web %>% html_nodes(".b-media__info-item--inline span") %>%html_text
View(years)
genere <- web %>% html_nodes(".b-media__info-item:nth-child(3) .dt-clamp-1") %>%html_text
View(genere)
platform <- web %>% html_nodes(".dt-clamp-2") %>%html_text()
View(platform)

games = data.frame(name,years,genere,platform)
View(games)

write.csv(games,"games_shah.csv")
str(games)
