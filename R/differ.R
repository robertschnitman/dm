#' Code differences between two vectors
#' 
#' @description Code differences between two vectors as 1; else, 0. Based on Stata's \code{egen differ()} command.
#' 
#' @usage differ2(x, y)
#'
#' @param x A vector.
#' @param x A vector.
#' 
#' @example x <- 1:5
#' y <- c(1, 6, 3, 8, 5)
#' 
#' z <- differ2(x, y)
#' 
#' cbind(x, y, z)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}, \url{https://www.stata.com/manuals13/degen.pdf}

differ2 <- function(x, y) {
  
  # Based on Stata's egen differ()
  ifelse(x == y, 0, 1)
  
}
