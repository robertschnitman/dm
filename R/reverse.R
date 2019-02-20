### GOAL: Be similar to Julia's map(reverse, x).
## (INPUT, OUTPUT): (vector, vector)
# Example: reverse(rownames(mtcars))

reverse <- function(x) {
  
  ### GOAL: Split --> (Apply) Reverse --> Combine
  ## The "Split-Apply-Combine" strategy by Hadley Wickham.
  # https://www.jstatsoft.org/article/view/v040i01/v40i01.pdf
  
  # 0. Type check.
  expected(x, 'character')
  
  # 1. Split.
  splits <- sapply(x, strsplit, split = NULL)
  
  # 2. (Apply) Reverse.
  revs   <- lapply(splits, rev)
  
  names(revs) <- NULL # Juxtaposition of original attributes and reversed names is confusing.
  
  # 3. Combine.
  output <- sapply(revs, paste0, sep = '', collapse = '')
  
  output
  
}
