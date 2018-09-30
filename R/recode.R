# recode a la` SPSS.
# dplyr::recode is a vectorized switch().
# Make recode() more like replace(),
#   where the "list" input is a set of raw values to initial instead of indices.

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


recodeNA  <- function(x, v) recode(x, NA, v)
recodeNA0 <- function(x) recodeNA(x, 0)

nvl <- recodeNA # similar to SQL, but for NAs. Shorthand.
