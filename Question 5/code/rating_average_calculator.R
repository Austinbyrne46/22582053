rating_average_calculator <- function(data, type) {
    data_filtered <- data %>% filter(Type == type)
    avg_rating <- mean(data_filtered$Rating, na.rm = TRUE)
    return(avg_rating)
}
