calculate_avg_sunshine_last_year <- function(weather_data) {
    # Convert the date column to an actual date format
    weather_data <- london_weather %>%
        filter(date >= lubridate::ymd("20220101"))

    # Extract the year and calculate the average sunshine duration per year
    avg_sunshine_per_month <- weather_data %>%
        mutate(month = month(date)) %>%
        group_by(month) %>%
        summarize(avg_sunshine = mean(sunshine, na.rm = TRUE))

    return(avg_sunshine_per_month)
}
