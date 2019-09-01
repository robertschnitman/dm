##### switch() alternatives.
#### 1. recode() - compact vectorized switch.
#### 2. switchv() - literal vectorized switch.

### 1. recode() - compact vectorized switch.
# recode a la` SPSS.
# dplyr::recode is a vectorized switch().
# Make recode() more like replace(),
#   where the "list" input is a set of raw initial values to find instead of indices.

recode <- function(x, initial, new) { # assumes initial/new are in the appropriate order.
  
  if (length(new) == 1 | length(initial) == length(new)) { # Users may want to replace a set of values with a single element.
    
    output <- replace(x, x %in% initial, new)
    
  } else {
    
    li <- length(initial)
    ln <- length(new)
    
    ltest <- paste0('Length of the initial set is ', li, ' and the length of the new values is ', ln, '. ')
    
    lcond <- 'Length of replacement vector must be either 1 or the same as the original.'
    
    stop(paste0(ltest, lcond))
    
  }
  
  output
  
}

recode_all <- function(x, ...) sapply(x, function(y) recode(y, ...))


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

switchv_all <- function(x, ...) sapply(x, function(y) switchv(y, ...))
#swap_all    <- switchv_all # swap(mtcars, `0` = 'a') # Error in swap(mtcars, `0` = "a") :  Vector expected. Received data.frame.
