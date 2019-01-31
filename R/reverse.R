# INPUT/OUTPUT: vector

reverse <- function(x) {
  
  ### GOAL: Split --> (Apply) Reverse --> Combine
  ## The "Split-Apply-Combine" strategy by Hadley Wickham.
  # https://www.jstatsoft.org/article/view/v040i01/v40i01.pdf
  
  # 1. Split.
  splits <- mapply(function(s) strsplit(s, split = NULL), x)
  
  # 2. (Apply) Reverse.
  revs   <- lapply(splits, rev)
  
  # 3. Combine.
  output <- sapply(revs, function(y) paste0(y, sep = '', collapse = ''))
  
  output
  
}
