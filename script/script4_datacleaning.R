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


