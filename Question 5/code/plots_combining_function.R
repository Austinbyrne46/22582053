# Function to combine the bar plot and sentiment plot
plots_combining_function <- function(bar_plot, sentiment_plot) {
    combined_plot <- gridExtra::grid.arrange(bar_plot, sentiment_plot, nrow = 2)
    return(plots_combining_function)
}
