#' SIR Model
#'
#' @param t Time
#' @param state Current state (S, I, R)
#' @param parameters Model parameters (beta, gamma)
#' @return List of derivatives
#' @export
sir_model <- function(t, state, parameters) {
  with(as.list(c(state, parameters)), {
    dS <- -beta * S * I
    dI <- beta * S * I - gamma * I
    dR <- gamma * I
    return(list(c(dS, dI, dR)))
  })
}
# Example of using the sir_model function
# initial_state <- c(S = 990, I = 10, R = 0)
# parameters <- c(beta = 0.3, gamma = 0.1)
# t <- 1
# result <- sir_model(t, initial_state, parameters)
# print(result)


