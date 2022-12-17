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

## it give me back me a list with only 463 tweets. probably there are some issues
## now i try with m56

m5s_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                           user = list_italian_m5s[1:35],
                                           since_id = NULL,
                                           max_id = NULL,
                                           verbose = T, 
                                           parse = T,
) %>% 
dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")


#give me back only 400 tweets.
#now i try setting up since_id and max_id, only for matteosalvinimi account.-----
#for instance, i set the id of a tweet of 25/07 and a tweet of 23/09

since <- "1551558900247314435"
max <- "1573269167305854976"
salvini_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                          user = list_italian_cdx[31],
                                          since_id = since,
                                          max_id = max,
                                          verbose = T, 
                                          parse = T,
) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")


#ok, by setting the since_id and the max_id with tweet id it seems works, but i have
#to set also the n, otherwise the function downloads only 100 tweets.

cdx_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                      user = list_italian_cdx,
                                      n = Inf,
                                      since_id = since,
                                      max_id = max,
                                      verbose = T, 
                                      parse = T,
) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")
#with those setting, gives me back 11195 tweets. i think it is the right one
# now i can try with others lists.

#csx-----
csx_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                  user = list_italian_csx,
                                  n = Inf,
                                  since_id = since,
                                  max_id = max,
                                  verbose = T, 
                                  parse = T,
) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")

#movimento5stelle-----
m5s_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                  user = list_italian_m5s,
                                  n = Inf,
                                  include_rts = TRUE,
                                  since_id = since,
                                  max_id = max,
                                  verbose = T, 
                                  parse = T,
) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")

#terzo polo-----
terzopolo_tweet <- rtweet::get_timeline(retryonratelimit = T,
                                  user = list_italian_terzopolo,
                                  n = Inf,
                                  since_id = since,
                                  max_id = max,
                                  verbose = T, 
                                  parse = T,
) %>% 
  dplyr::filter(created_at > "2022-07-25" & created_at <="2022-09-24")










