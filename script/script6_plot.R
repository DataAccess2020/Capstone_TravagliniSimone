install.packages("wordcloud")
library(wordcloud)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("wordcloud2")
library(wordcloud2)

#create a corpus
install.packages("tm")
library(tm)
tweet_dx <- unlist(hashtag_cdx)
tweet_dx1 <- Corpus(VectorSource(tweet_dx))

tweet_dx1 <- tweet_dx1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_dx1 <- tm_map(tweet_dx1, content_transformer(tolower))
tweet_dx1 <- tm_map(tweet_dx1, removeWords)

dtm <- TermDocumentMatrix(tweet_dx1) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)

set.seed(1234) # for reproducibility 
wordcloud(words = df$word, freq = df$freq, min.freq = 1,
          max.words=400, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))
#ok, now i can export the image
## second plot, csx----

tweet_sx <- unlist(hashtag_csx)
tweet_sx1 <- Corpus(VectorSource(tweet_sx))

tweet_sx1 <- tweet_sx1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_sx1 <- tm_map(tweet_sx1, content_transformer(tolower))
tweet_sx1 <- tm_map(tweet_sx1, removeWords)

dtm <- TermDocumentMatrix(tweet_sx1) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)

set.seed(1234) # for reproducibility 
wordcloud(words = wordscsx$word, freq = wordscsx$freq, min.freq = 1,
          max.words=100, random.order=FALSE, rot.per=0.55,
          colors=brewer.pal(10, "Dark2"))

wordscsx <- head(df, 20)
#i can also create a barplot with the 20 hashtags most popular

ggplot(wordscsx, aes(x = freq)) +
  geom_histogram(alpha = 0.2, col = "black", fill = "blue") +
  xlab("hashtags") +
  ylab("Count") +
  theme_bw()

## m5s----
tweet_m5s <- unlist(hashtag_m5s)
tweet_m5s1 <- Corpus(VectorSource(tweet_m5s))

tweet_m5s1 <- tweet_m5s1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_m5s1 <- tm_map(tweet_m5s1, content_transformer(tolower))
tweet_m5s1 <- tm_map(tweet_m5s1, removeWords)

dtm <- TermDocumentMatrix(tweet_m5s1) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)

set.seed(1234) # for reproducibility 
wordcloud(words = df$word, freq = df$freq, min.freq = 1,
          max.words=100, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(1, "Dark2"))

### terzopolo-----
tweet_tp <- unlist(hashtag_terzopolo)
tweet_tp1 <- Corpus(VectorSource(tweet_tp))

tweet_tp1 <- tweet_tp1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_tp1 <- tm_map(tweet_tp1, content_transformer(tolower))
tweet_tp1 <- tm_map(tweet_tp1, removeWords)

dtm <- TermDocumentMatrix(tweet_tp1) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)

set.seed(1234) # for reproducibility 
wordcloud(words = df$word, freq = df$freq, min.freq = 1,
          max.words=500, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))
