# INPUT/OUTPUT: vector

reverse <- function(x) {
  
  ## GOAL: Split --> Reverse --> Combine
  # Essentially the "Split-Apply-Combine" strategy by Hadley Wickham.
  
  # 1. Split.
  splits <- mapply(function(s) strsplit(s, split = NULL), x)
  
  # 2. Reverse.
  revs   <- lapply(splits, rev)
  
  # 3. Combine.
  output <- sapply(revs, function(y) paste0(y, sep = '', collapse = ''))
  
  output
  
}