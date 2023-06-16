library(ggplot2)
library(gridExtra)

Netflix_combined_plot <- function(data1, data2) {
    # Create plots for show and movie data
    show_plot <- ggplot(data1, aes(x = imdb_score, y = tmdb_popularity, color = type)) +
        geom_point() +
        labs(title = "IMDb Scores by Type", x = "IMDb Score", y = "tmdb_popularity") +
        scale_color_discrete(name = "Type")

    movie_plot <- ggplot(data2, aes(x = imdb_score, y = tmdb_popularity, color = type)) +
        geom_point() +
        labs(title = "IMDb Scores by Type", x = "IMDb Score", y = "tmdb_popularity") +
        scale_color_discrete(name = "Type")

    # Arrange the two plots vertically
    combined_plot <- grid.arrange(show_plot, movie_plot, ncol = 1)

    # Return the combined plot
    return(combined_plot)
}
