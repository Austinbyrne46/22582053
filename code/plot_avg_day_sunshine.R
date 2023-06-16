plot_sunshine_per_day <- function(sunshine_data) {
    sunshine_data <- sunshine_data %>%
        mutate(color_group = ifelse(sunshine > 7, "Above 7 hours", "Below 7 hours"))

    color_palette <- c("Above 7 hours" = "red", "Below 7 hours" = "blue")

    ggplot(sunshine_data, aes(x = date, y = sunshine, fill = color_group)) +
        geom_bar(stat = "identity", position = "identity") +
        labs(x = "Date", y = "Sunshine Duration (hours)",
             title = "Sunshine Duration in London per Day") +
        scale_fill_manual(values = color_palette) +
        theme_minimal()
}






