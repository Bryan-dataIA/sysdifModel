#' Provides descriptive statistics on the results
#'
#' @param results DataFrame containing the results of the simulation
#' @return Descriptive statistics
#' @export
summary_statistics <- function(results) {
  mean_S <- mean(results$S)
  mean_I <- mean(results$I)
  mean_R <- mean(results$R)
  return(list(mean_S = mean_S, mean_I = mean_I, mean_R = mean_R))
}


# Example of using the summary_statistics function
# stats <- summary_statistics(results)
# print(stats)
