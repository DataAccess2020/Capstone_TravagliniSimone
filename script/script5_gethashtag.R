## the next task will be extract the hashtag from every tweet, in order to se which are the 
#main topic for all the coalitions during the election campaign.
#insert the tweets full text in a string----
list_cdx_tweet <- unlist(cdx_tweet$full_text)
list_cdx_tweet

list_csx_tweet <- unlist(csx_tweet$full_text)
list_csx_tweet

list_m5s_tweet <- unlist(m5s_tweet$full_text)
list_m5s_tweet

list_terzopolo_tweet <- unlist(terzopolo_tweet$full_text)
list_terzopolo_tweet

#select the right regex.
library(stringr)

str_view_all(list_cdx_tweet,
             pattern = "#\\S+.")

#probably "#\\S+." is the right one
## cdx----
hashtag_cdx <- str_extract_all(list_cdx_tweet, pattern = "#\\S+.")  
## csx----
hashtag_csx <- str_extract_all(list_csx_tweet, pattern = "#\\S+.")
## m5s----
hashtag_m5s <- str_extract_all(list_m5s_tweet, pattern = "#\\S+.")
## terzopolo----
hashtag_terzopolo <- str_extract_all(list_terzopolo_tweet, pattern = "#\\S+.")  









