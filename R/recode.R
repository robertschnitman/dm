# recode a la` SPSS.
# dplyr::recode is a vectorized switch().
# Make recode() more like replace(),
#   where the "list" input is a set of raw initial values to find instead of indices.


recode <- function(x, initial, new) { # assumes initial/new are in the appropriate order.
  
  stopifnot(length(initial) == length(new))
  
  replace(x, x %in% initial, new)
  
}


NAvl <- function(x, v) { # similar to SQL's nvl(), but for NAs. Shorthand.

  replace(x, is.na(x), v)
  
}

NAvl0 <- function(x) { # Switch all NAs to 0.
  
  NAvl(x, 0)
  
}
