## next step, trying to download all the tweet from our lists.
library(dplyr)
##prova 1: with tweets from 25th of july to 24th of september for dx coalition
dxcoalitions_tweet <- rtweet::get_timeline(retryonratelimit = T,
  user = list_italian_cdx, 
  since_id = NULL,
  max_id = NULL,
  verbose = T, 
  parse = T,
  ) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")

## it retourns me a list with only 463 tweets. probably there are some issues
