### GOAL: Be similar to Julia's map(reverse, x).
## (INPUT, OUTPUT): (vector, vector)

reverse <- function(x) {
  
  ### GOAL: Split --> (Apply) Reverse --> Combine
  ## The "Split-Apply-Combine" strategy by Hadley Wickham.
  # https://www.jstatsoft.org/article/view/v040i01/v40i01.pdf
  
  # 0. Type check.
  expected(x, 'character')
  
  # 1. Split.
  splits <- mapply(function(s) strsplit(s, split = NULL), x)
  
  # 2. (Apply) Reverse.
  revs   <- lapply(splits, rev)
  
  # 3. Combine.
  output <- sapply(revs, function(y) paste0(y, sep = '', collapse = ''))
  
  output
  
}
