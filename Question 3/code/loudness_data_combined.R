library(ggplot2)
library(dplyr)

loudness_data_combined <- function(data1, data2, band1_name, band2_name, loudness_var) {
    # getting loudness data from both bands and comining.
    data_loudness <- data.frame(
        Band = c(rep(band1_name, nrow(data1)), rep(band2_name, nrow(data2))),
        Loudness = c(data1[[loudness_var]], data2[[loudness_var]])
    )

    # Return combined data for loudness
    return(data_loudness)
}




