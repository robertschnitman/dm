replaceNA  <- function(x, v) replace(x, is.na(x), v)
replaceNA0 <- function(x) replaceNA(x, 0)