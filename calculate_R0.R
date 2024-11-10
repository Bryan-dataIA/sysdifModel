#' Calculates the basic reproduction number R0
#'
#' @param beta Transmission rate
#' @param gamma Recovery rate
#' @return Value of R0
#' @export
calculate_R0 <- function(beta, gamma) {
  return(beta / gamma)
}

# Example of using the calculate_R0 function
# beta <- 0.3
# gamma <- 0.1
# R0 <- calculate_R0(beta, gamma)
# print(R0)
