# a la` Stata's egen rowmiss().

numNA <- function(x, m = NULL) {
  
  lenna <- function(y) length(y[is.na(y)])
  
  if (is.null(m)) {
    
    output <- lenna(x)
    
  } else {
    
    output <- apply(x, m, lenna)
  }
  
  output
  
}

rowNA <- function(x) numNA(x, 1)
colNA <- function(x) numNA(x, 2)
