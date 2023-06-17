loudness_comparison_plot <- function(data, x_var, y_var) {
    # Creating a violin plot, it looks cool and will provide cool information.
    ggplot(data, aes_string(x = x_var, y = y_var, fill = x_var)) +
        geom_violin() +
        labs(x = x_var, y = y_var, title = "Loudness Comparison: Coldplay vs Mettallica") +
        theme_bw()
}

