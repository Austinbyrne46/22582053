library(ggplot2)
library(gridExtra)

# Function to create an individual attribute box plot
attribute_boxplot_creator <- function(data, attribute) {
    ggplot(data, aes(x = Band, y = !!sym(attribute), fill = Band)) +
        geom_boxplot(alpha = 0.7) +
        labs(x = "Band", y = attribute, title = paste("Attribute:", attribute)) +
        theme_minimal()
}
