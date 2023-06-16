table_rating_polarity_average <- function(data, free_app_rating, paid_app_rating, free_app_sentiment_polarity, paid_app_sentiment_polarity) {
    average_table <- data.frame(Type = c("Free", "Paid"),
                                Average_Rating = c(free_app_rating, paid_app_rating),
                                Average_Polarity = c(free_app_sentiment_polarity, paid_app_sentiment_polarity))

    table_plot <- average_table %>%
        kable(align = "c", caption = "Sentiment polarity and ratings average pr free vs paid apps") %>%
        kable_styling(full_width = FALSE) %>%
        add_header_above(c(" " = 1, "Average Rating" = 1, "Average Sentiment Polarity" = 1)) %>%
        row_spec(0, bold = FALSE) %>%
        row_spec(1, bold = FALSE) %>%
        collapse_rows(columns = 1, valign = "t") %>%
        column_spec(1, bold = TRUE) %>%
        column_spec(2:3, width = "90%")

    return(table_plot)
}



