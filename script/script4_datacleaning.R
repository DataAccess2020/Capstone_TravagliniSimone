## select only the column i care about on politician data frame.
#first of all look which column are usefull

view(italian_cdx)

# i will leave user_id, name, screen_name, description, followers_count, friends_count,
# listed_count, favourite_count and statuses_count

library(dplyr)# open packages----

#cdx
italian_cdx <- select(italian_cdx, c(1, 2, 3, 5, 8, 9, 10, 12, 17))

#csx
italian_csx <- select(italian_csx, c(1, 2, 3, 5, 8, 9, 10, 12, 17))

#terzo polo
italian_terzopolo <- select(italian_terzopolo, c(1, 2, 3, 5, 8, 9, 10, 12, 17))

#m5s
italian_m5s <- select(italian_m5s, c(1, 2, 3, 5, 8, 9, 10, 12, 17))

## export tweet
## before i need to select only the columns i need
cdx_tweet <- select(cdx_tweet, c(1, 2, 3, 4, 6, 8))
csx_tweet <- select(csx_tweet, c(1, 2, 3, 4, 6, 8))
m5s_tweet <- select(m5s_tweet, c(1, 2, 3, 4, 6, 8))
terzopolo_tweet <- select(terzopolo_tweet, c(1, 2, 3, 4, 6, 8))

#now i can extract the data
write.csv(cdx_tweet,"C:\\Users\\trava\\OneDrive\\Documenti\\Capstone_TravagliniSimone\\data\\cdx_tweet.csv", row.names=FALSE)
write.csv(csx_tweet,"C:\\Users\\trava\\OneDrive\\Documenti\\Capstone_TravagliniSimone\\data\\csx_tweet.csv", row.names=FALSE)
write.csv(m5s_tweet,"C:\\Users\\trava\\OneDrive\\Documenti\\Capstone_TravagliniSimone\\data\\m5s_tweet.csv", row.names=FALSE)
write.csv(terzopolo_tweet,"C:\\Users\\trava\\OneDrive\\Documenti\\Capstone_TravagliniSimone\\data\\terzopolo_tweet.csv", row.names=FALSE)
