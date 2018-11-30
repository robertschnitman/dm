### PURPOSE: Vectorize switch.

switchv <- function(x, ...) {
  
  codes <- function(z) switch(z, ...)
  
  output <- sapply(x, codes)
  
  output
  
}