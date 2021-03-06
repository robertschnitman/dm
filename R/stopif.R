#' Conditional halt of an execution
#' 
#' @description Stop an execution based on a specified condition.
#' 
#' @usage stopif(cond, msg = 'Stop condition met.', ...)
#'
#' @param cond Condition
#' @param msg The printed error message.
#' @param ... Parameters passed to \code{stop}
#' 
#' @example stopif(2 < 3)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

stopif <- function(cond, msg = 'Stop condition met.', ...) {
  
  if (cond) stop(msg, ...)
  
}
