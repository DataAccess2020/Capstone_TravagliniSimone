## next step, trying to download all the tweet from our lists.
library(dplyr)

##prova 1: with tweets from 25th of july to 24th of september for dx coalition
dxcoalition_tweet <- rtweet::get_timeline(retryonratelimit = T,
  user = list_italian_cdx, 
  since_id = NULL,
  max_id = NULL,
  verbose = T, 
  parse = T,
  ) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")

## it retorns me a list with only 463 tweets. probably there are some issues
## now i try with m56
list_italian_m5s <- c(italian_m5s$screen_name)
list_italian_m5s

m5s_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                           user = list_italian_m5s[1:35],
                                           
                                           since_id = NULL,
                                           max_id = NULL,
                                           verbose = T, 
                                           parse = T,
) %>% 
dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")


#give me back only 400 tweets.