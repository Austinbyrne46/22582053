obtain_total_covid_casses_function <- function(dataset) {
    total_cases <- dataset %>%
        group_by(continent) %>%
        arrange(date) %>%
        filter(date == last(date)) %>%
        summarise(total_cases = sum(total_cases)) %>%
        filter(!is.na(continent))

    return(total_cases)
}

