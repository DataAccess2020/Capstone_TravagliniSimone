#Connection with Twitter API
install.packages("rtweet")
library(rtweet)


#token for authentication
token <- create_token(
  app = "XXX",
  consumer_key = 'XXX',
  consumer_secret = 'XXX',
  access_token = 'XXX',
  access_secret = 'XXX',
)


aut1 <- rtweet_app()
auth_save(aut1, "simonetrvgln")

auth_as("simonetrvgln")
# i have already send my request for the twitter academic API. i'm waiting for a response