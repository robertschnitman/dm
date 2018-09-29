# From Stata's egen

rowmiss <- function(x) {
  
  numna <- function(y) length(is.na(y)[is.na(y) == TRUE])
  
  apply(x, 1, numna)
  
  
}