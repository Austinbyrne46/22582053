temp_trend_plot <- function(london_max_mean_min) {
    # Plot the line graphs
    ggplot(london_max_mean_min, aes(x = year)) +
        geom_line(aes(y = max_temp, color = "Max Temperature")) +
        geom_line(aes(y = avg_temp, color = "Average Temperature")) +
        geom_line(aes(y = min_temp, color = "Min Temperature")) +
        labs(title = "Temperature Trends per Year",
             x = "Year",
             y = "Temperature") +
        scale_color_manual(values = c("red", "blue", "green"),
                           labels = c("Max Temperature", "Average Temperature", "Min Temperature")) +
        theme_minimal()
}
