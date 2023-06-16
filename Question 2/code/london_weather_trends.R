london_weather_trends <- function(london_data) {
    # Convert the date column to an actual date format
    london_data <- london_data %>%
        mutate(date = as.Date(as.character(date), format = "%Y%m%d")) %>%
        mutate(year = year(date))

    # Compute the maximum temperature per year
    max_london_per_year <- london_data %>%
        group_by(year) %>%
        summarize(max_temp = max(max_temp, na.rm = TRUE))

    # Compute the average temperature per year
    avg_london_per_year <- london_data %>%
        group_by(year) %>%
        summarize(avg_temp = mean(mean_temp, na.rm = TRUE))

    # Compute the minimum temperature per year
    min_london_per_year <- london_data %>%
        group_by(year) %>%
        summarize(min_temp = min(min_temp, na.rm = TRUE))

    # Combine the three datasets into a single dataframe
    combined_london_data <- merge(max_london_per_year, avg_london_per_year, by = "year")
    combined_london_data <- merge(combined_london_data, min_london_per_year, by = "year")

    return(combined_london_data)
}

