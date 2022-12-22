install.packages("wordcloud")
library(wordcloud)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("wordcloud2")
library(wordcloud2)


install.packages("tm")
library(tm)
library(dplyr)

## cdx----
#create a corpus
tweet_dx <- unlist(hashtag_cdx)
tweet_dx1 <- Corpus(VectorSource(tweet_dx))

#remove the symbol # and punctation
tweet_dx1 <- tweet_dx1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_dx1 <- tm_map(tweet_dx1, content_transformer(tolower))
tweet_dx1 <- tm_map(tweet_dx1, removeWords, stopwords("english"))

dtm <- TermDocumentMatrix(tweet_dx1) 
matrix <- as.matrix(dtm) 
words <- sort(rowSums(matrix),decreasing=TRUE) 
df <- data.frame(word = names(words),freq=words)

wordcloud(words = df$word, freq = df$freq, min.freq = 20,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"),
          scale=c(2,0.40))
#now i have a top 20 of hashtag from cdx
topcdx <- head(df, 20)


wordcloud(words = topcdx$word, freq = topcdx$freq, min.freq = 1,
          max.words=Inf, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))
#ok, now i can export the image
##csx----

tweet_sx <- unlist(hashtag_csx)
tweet_sx1 <- Corpus(VectorSource(tweet_sx))

tweet_sx1 <- tweet_sx1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_sx1 <- tm_map(tweet_sx1, content_transformer(tolower))
tweet_sx1 <- tm_map(tweet_sx1, removeWords, stopwords("english"))

dtm2 <- TermDocumentMatrix(tweet_sx1) 
matrix2 <- as.matrix(dtm2) 
words2 <- sort(rowSums(matrix2),decreasing=TRUE) 
df2 <- data.frame(word = names(words2),freq=words2)

wordcloud(words = df2$word, freq = df2$freq, min.freq = 20,
          max.words=Inf, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(10, "Dark2"),
          scale=c(2,0.60))

topcsx <- head(df2, 20)
#i can also create a barplot with the 20 hashtags most popular


## m5s----
tweet_m5s <- unlist(hashtag_m5s)
tweet_m5s1 <- Corpus(VectorSource(tweet_m5s))

tweet_m5s1 <- tweet_m5s1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_m5s1 <- tm_map(tweet_m5s1, content_transformer(tolower))
tweet_m5s1 <- tm_map(tweet_m5s1, removeWords, stopwords("english"))

dtm3 <- TermDocumentMatrix(tweet_m5s1) 
matrix3 <- as.matrix(dtm3) 
words3 <- sort(rowSums(matrix3),decreasing=TRUE) 
df3 <- data.frame(word = names(words3),freq=words3)

wordcloud(words3 = df3$word, freq = df3$freq, min.freq = 8,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(1, "Dark2"),
          scale=c(2,0.60))
topm5s <- head(df3, 20)

## terzopolo-----
tweet_tp <- unlist(hashtag_terzopolo)
tweet_tp1 <- Corpus(VectorSource(tweet_tp))

tweet_tp1 <- tweet_tp1 %>%
  tm_map(removeNumbers) %>%
  tm_map(removePunctuation) %>%
  tm_map(stripWhitespace)
tweet_tp1 <- tm_map(tweet_tp1, content_transformer(tolower))
tweet_tp1 <- tm_map(tweet_tp1, removeWords, stopwords("english"))

dtm4 <- TermDocumentMatrix(tweet_tp1) 
matrix4 <- as.matrix(dtm4) 
words4 <- sort(rowSums(matrix4),decreasing=TRUE) 
df4 <- data.frame(word = names(words4),freq=words4)


wordcloud(words = df4$word, freq = df4$freq, min.freq = 15,
          max.words=Inf, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"),
          scale=c(2,0.60))
#top 20 hashtag for terzo polo 
toptp <- head(df4, 20)

## barplot----
barplot(topcdx$freq, names.arg = topcdx$word, las=2,
        col=c(2:5), 
        cex.axis=0.8, cex.names=0.8) ## cdx


barplot(top_csx$freq, names.arg = top_csx$word, las=2,
        col=c(3:8), 
        cex.axis=0.8, cex.names=0.8) %>% 
head(top_csx, 20) ## csx

barplot(top_csx$freq, names.arg = top_csx$word, las=2,
        col=c(2:4),
        cex.axis=0.8, cex.names=0.8) ## m5s

barplot(toptp$freq, names.arg = toptp$word, las=2,
        col=c(5:7), 
        cex.axis=0.8, cex.names=0.8) ## cdx


