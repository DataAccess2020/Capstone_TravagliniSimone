# i create 4 list on my twitter account. one for cdx coalition,
# csx coalition, m5s and terzo polo coalition. all the lists contain politicians twitter account 
# the next task will be the parse of tweet during the election campaign.
#for each coalition, which were the main topic or argoument that account speach about?

#first step: import data from list.
auth_as('simonetrvgln')

library(rtweet)
library(tidyverse)
library(dplyr)


auth_setup_default()

italian_cdx = lists_members(
  list_id = "1602429027561750528",
  owner_user = NULL,
  slug = NULL,
  n = 17,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  parse = TRUE,
  verbose = TRUE,
  
)

# Create a string with the cdx profile account

list_italian_cdx = c(italian_cdx$screen_name)

list_italian_cdx[2] #i try to see the second name in the list, in order to see if all is ok






