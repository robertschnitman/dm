#' Load libraries
#' 
#' @description Load libraries, and install them if not already installed.
#' 
#' @usage load_libraries(x)
#'
#' @param x A character vector.
#' 
#' @example load_libraries('tidyverse', 'abind', 'ggformula')
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

load_libraries <- function(x) {
  
  stopifnot(is.character(x))
  
  for (i in x) {
    
    if (!require(i, character.only = TRUE)) {
      
      install.packages(i)
      library(i, character.only = TRUE)
      
    }
    
  }
  
}