sentiment_polarity_calculator <- function(data, type) {
    data_sentiment_filtered <- data %>% filter(Type == type)
    avg_polarity <- mean(data_sentiment_filtered$Sentiment_Polarity, na.rm = TRUE)
    return(avg_polarity)
}
