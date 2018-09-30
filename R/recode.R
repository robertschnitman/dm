# recode a la` SPSS.
# dplyr::recode is a vectorized switch().
# Make recode() more like replace(),
#   where the "list" input are raw values to find instead of indices.

recode <- function(x, find, new) { # assumes find/new are in the appropriate order.
  
  stopifnot(length(find) == length(new))
  
  for (i in 1:length(find)) {
    
    x[x == find[i]] <- new[i]
    
  }
  
  x
  
}