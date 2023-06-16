plot_avg_sunshine <- function(london_sunshine) {
    ggplot(london_sunshine, aes(x = year, y = avg_sunshine)) +
        geom_line() +
        geom_point() +
        labs(x = "Year", y = "Average Sunshine Duration",
             title = "Average Sunshine Duration in London per Year") +
        theme_minimal()
}
