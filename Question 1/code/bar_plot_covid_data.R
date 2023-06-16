bar_plot_covid_data <- function(data) {
    ggplot(data, aes(x = continent, y = total_cases, fill = continent)) +
        geom_bar(stat = "identity") +
        labs(title = "Total COVID-19 Cases by Continent",  caption = "Data from \nOWID(Our World In Data)) ") +
        scale_fill_discrete() +
        theme_minimal() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))
}

