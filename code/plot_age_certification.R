library(ggplot2)

plot_age_certification <- function(data) {
    # Filter out rows with NA values
    filtered_data <- na.omit(data)

    # Create a bar plot
    ggplot(filtered_data, aes(x = age_certification, y = tmdb_popularity, color = age_certification)) +
        geom_bar(stat = "identity") +
        labs(title = "Age Certification vs. Popularity", x = "Age Certification", y = "Popularity")
}
