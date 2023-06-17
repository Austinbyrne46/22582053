library(ggplot2)

tempo_distribution_function <- function(data1, data2, x_var, binwidth = 5, facet_ncol = 2) {
    # Combining tempo data
    tempo_band <- rbind(
        data.frame(Band = "Coldplay", Tempo = data1[[x_var]]),
        data.frame(Band = "Mettallica", Tempo = data2[[x_var]])
    )

    # Creating histograms
    plot_tempo <- ggplot(tempo_band, aes(x = Tempo, fill = Band)) +
        geom_histogram(binwidth = binwidth, position = "identity", alpha = 0.7) +
        labs(x = x_var, y = "Count", title = "Distribution of tempo: Coldplay vs Mettallica") +
        theme_minimal()

    # getting the histograms to be displayed side by side.
    plot_tempo + facet_wrap(~ Band, ncol = facet_ncol)
}


