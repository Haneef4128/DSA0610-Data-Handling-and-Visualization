# Install and load ggplot2 package
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Your data
web_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Stacked Bar Chart (for demonstration purposes)
stacked_bar_chart <- ggplot(web_data, aes(x = Date, y = Page_Views, fill = factor(Date))) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Chart", x = "Date", y = "Page Views") +
  theme_minimal()
# Print or display the plots
print(stacked_bar_chart)

