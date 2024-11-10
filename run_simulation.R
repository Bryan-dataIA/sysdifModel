#' Runs the SIR model simulation
#'
#' @param initial_state Initial state (S, I, R)
#' @param parameters Model parameters (beta, gamma)
#' @param times Vector of time for the simulation
#' @return DataFrame with the results of the simulation
#' @export
run_simulation <- function(initial_state, parameters, times) {
  library(deSolve)
  out <- ode(y = initial_state, times = times, func = sir_model, parms = parameters)
  return(as.data.frame(out))
}

# Example of using the run_simulation function
# initial_state <- c(S = 990, I = 10, R = 0)
# parameters <- c(beta = 0.3, gamma = 0.1)
# times <- seq(0, 100, by = 1)
# results <- run_simulation(initial_state, parameters, times)
# head(results)
