# Function to create the sentiment plot
sentiment_bar_plot <- function(data) {
    plot_sentiment_bar <- data %>%
        filter(Sentiment %in% c("Positive", "Neutral", "Negative")) %>%
        count(Category, Sentiment) %>%
        ggplot(aes(x = reorder(Category, -n), y = n, fill = Sentiment)) +
        geom_bar(stat = "identity", position = "stack") +
        labs(x = "Category", y = "Total count", title = "Sentiment distribution per category") +
        scale_fill_manual(values = c("Positive" = "green", "Neutral" = "purple", "Negative" = "red")) +
        theme_bw() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))

    return(plot_sentiment_bar)
}
