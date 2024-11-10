#' Plots the results of the simulation
#'
#' @param results DataFrame containing the results of the simulation
#' @return Plot of populations S, I, and R
#' @export
plot_results <- function(results) {
  library(ggplot2)
  ggplot(results, aes(x = time)) +
    geom_line(aes(y = S, color = "Susceptibles")) +
    geom_line(aes(y = I, color = "Infected")) +
    geom_line(aes(y = R, color = "Recovered")) +
    labs(title = "SIR Model of COVID-19", x = "Time", y = "Population") +
    scale_color_manual(values = c("blue", "red", "green"))
}

# Example of using the plot_results function
# plot_results(results)
