# Function to create a combined box plot for all attributes
combined_boxplot_creator <- function(data) {
    # Reshaping the data, i tried to use gather and pivot_longer but for some reason I couldnt get that too work.
    attribute_data <- reshape2::melt(data, id.vars = "Band", variable.name = "Attribute", value.name = "Value")

    # function to create boxplots
    boxplot_attributes <- ggplot(attribute_data, aes(x = Attribute, y = Value, fill = Band)) +
        geom_boxplot(alpha = 0.7) +
        labs(x = "Attribute", y = "Value", title = "Comparison of Attributes") +
        theme_minimal()

    return(boxplot_attributes)
}

