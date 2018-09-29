# From Stata's egen

num_miss <- function(x, m) {
  
  numna <- function(y) length(is.na(y)[is.na(y) == TRUE])
  
  apply(x, m, numna)
  
}

row_miss <- function(x) num_miss(x, 1)
col_miss <- function(x) num_miss(x, 2)
