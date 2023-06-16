Netflix_data_summarised <- function(data, type) {
    filtered_data <- data %>%
        filter(type == !!type) %>%
        summarise(imdb_score, tmdb_popularity, type, runtime, imdb_votes)

    return(filtered_data)
}








