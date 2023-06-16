continent_comparer_function <- function(dataset, column) {
    # Filter data for each continent
    data <- dataset %>%
        group_by({{column}}) %>%
        summarize(
            total_cases = sum(total_cases, na.rm = TRUE),
            total_deaths = sum(total_deaths, na.rm = TRUE),
            new_cases = sum(new_cases, na.rm = TRUE)
        )

    return(data)
}

