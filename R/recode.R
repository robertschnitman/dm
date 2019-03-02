##### switch() alternatives.
#### 1. recode() - compact vectorized switch.
#### 2. switchv() - literal vectorized switch.

### 1. recode() - compact vectorized switch.
# recode a la` SPSS.
# dplyr::recode is a vectorized switch().
# Make recode() more like replace(),
#   where the "list" input is a set of raw initial values to find instead of indices.

recode <- function(x, initial, new) { # assumes initial/new are in the appropriate order.
  
  filter <- x %in% initial
  
  if (length(new) == 1 | length(initial) == length(new)) { # Users may want to replace a set of values with a single element.
    
    output <- replace(x, filter, new)
    
  } else {
    
    stop('Length of replacement values must be either 1 or the same length as the given initial values.')
    
  }
  
  output
  
}


NAvl <- function(x, v) { # similar to SQL's nvl(), but for NAs. Shorthand.

  replace(x, is.na(x), v)
  
}

NAvl0 <- function(x) { # Switch all NAs to 0.
  
  NAvl(x, 0)
  
}

### 2. switchv() - literal vectorized switch.
## PURPOSE: Vectorize switch.
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
