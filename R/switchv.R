### PURPOSE: Vectorize switch.
## (INPUT, OUTPUT): (vector, vector)

switchv <- function(x, ...) {
  
  if (!is.vector(x)) { 
    
    stop(paste0('Vector expected. Received ', class(x), '.')) 
    
  } # For nth-dimensional data, use switchv within the appropriate functionals.
  
  codes <- function(z) switch(z, ...)
  
  output <- sapply(x, codes)
  
  output
  
}

swap <- switchv # synonym for more concise coding. Maintain switchv() for RStudio's predictive text.
