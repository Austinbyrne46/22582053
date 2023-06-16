obtain_total_deaths_function <- function(dataset) {
    total_deaths <- dataset %>%
        group_by(continent) %>%
        arrange(date) %>%
        filter(date == last(date)) %>%
        summarise(total_deaths = sum(total_deaths, na.rm = TRUE)) %>%
        filter(!is.na(continent))

    return(total_deaths)
}
