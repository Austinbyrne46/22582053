# Function to create the profitability bar plot
total_installs_bar_plot <- function(data) {
    potential <- data %>%
        group_by(Category) %>%
        summarise(Total_Installs = sum(as.numeric(gsub("[+,]", "", Installs))), .groups = "keep") %>%
        arrange(desc(Total_Installs))

    bar_plot <- ggplot(potential, aes(x = reorder(Category, -Total_Installs), y = Total_Installs)) +
        geom_bar(stat = "identity", fill = "blue", width = 0.5) +
        labs(x = "Category", y = "Total Installs", title = "Total installs per category") +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))

    return(bar_plot)
}
