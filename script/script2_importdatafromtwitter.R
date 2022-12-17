# i create 4 list on my twitter account. one for cdx coalition,-----
# csx coalition, m5s and terzo polo coalition. all the lists contain politicians twitter account 
# the next task will be the parse of tweet during the election campaign.
#for each coalition, which were the main topic or argoument that account speach about?

#first step: import data from list.------
auth_as('simonetrvgln')

library(rtweet)
library(tidyverse)
library(dplyr)


auth_setup_default()

#cdx list number 1602429027561750528-------
italian_cdx = lists_members(
  list_id = "1602429027561750528",
  owner_user = NULL,
  slug = NULL,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  parse = TRUE,
  verbose = TRUE,
  
)

#csx list number 1602661051400654850------
italian_csx = lists_members(
  list_id = "1602661051400654850",
  owner_user = NULL,
  slug = NULL,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  parse = TRUE,
  verbose = TRUE,
  
)

#terzo polo list number 1602680072506408960-------
italian_terzopolo = lists_members(
  list_id = "1602680072506408960",
  owner_user = NULL,
  slug = NULL,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  parse = TRUE,
  verbose = TRUE,
  
)

#m5s list number 1602433071604801537---------
italian_m5s = lists_members(
  list_id = "1602433071604801537",
  owner_user = NULL,
  slug = NULL,
  cursor = "-1",
  token = NULL,
  retryonratelimit = TRUE,
  parse = TRUE,
  verbose = TRUE,
  
)
#lists are not completed, cause twitter dont let me finish (probably caused by a temporal block)
#i'll try tomorrow

##prove-----
# Create a string with the profile account

list_italian_cdx = c(italian_cdx$screen_name)
list_italian_csx = c(italian_csx$screen_name)
list_italian_m5s = c(italian_m5s$screen_name)
list_italian_terzopolo = c(italian_terzopolo$screen_name)


list_italian_cdx[2] #i try to see the second name in the list, in order to see if all is ok
## ok, now i have the list of the most important candidate and politicians from the right coalition
#the next task will be download the tweet













