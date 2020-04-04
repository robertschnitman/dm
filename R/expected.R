#' Stop execution if a specific class is not expected
#' 
#' @description Stop execution if a specific class is not expected.
#' 
#' @usage expected(x, expect)
#'
#' @param x An object.
#' @param x A scalar string.
#' 
#' @example expected(2, "character")
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

expected <- function(x, expect) {
  
  # GOAL: Stop a function from executing if a specific class is not expected.
  # (INPUT, OUTPUT) = (any, 1-element vector)
  
  if (class(x) != expect) {
    
    stop(paste0('Class "', expect, '" expected. Received class ', class(x), '.')) 
    
  }
  
}
