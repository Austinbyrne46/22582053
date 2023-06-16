calculate_avg_sunshine <- function(london_weather) {
    # Convert the date column to an actual date format
    london_weather <- london_weather %>%
        mutate(date = as.Date(as.character(date), format = "%Y%m%d"),
               year = year(date))

    # Extract the year and calculate the average sunshine duration per year
    avg_sunshine_per_year <- london_weather %>%
        group_by(year) %>%
        summarize(avg_sunshine = mean(sunshine, na.rm = TRUE))

    return(avg_sunshine_per_year)
}




