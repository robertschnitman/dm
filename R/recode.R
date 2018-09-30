# recode a la` SPSS.
# dplyr::recode is a vectorized switch().
# Make recode() more like replace(),
#   where the "list" input is a set of raw initial values to find instead of indices.

recode <- function(x, initial, new) { # assumes initial/new are in the appropriate order.
  
  stopifnot(length(initial) == length(new))

  for (i in 1:length(initial)) {
    
    if (is.na(initial[i])) {
      
      x[is.na(x)] <- new[i]
      
    } else {
      
      x[x == initial[i]] <- new[i]
      
    }
    
  }
  
  x
  
}


nvl <- function(x, v) { # similar to SQL, but for NAs. Shorthand.

  ifelse(is.na(x), v, x)
  
}

nvl0 <- function(x) { # Switch all NAs to 0.
  
  ifelse(is.na(x), 0, x)
  
}
