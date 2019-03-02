anagram <- function(x) {
  
  ### GOAL: Split --> Apply Jumble --> Combine
  ## The "Split-Apply-Combine" strategy by Hadley Wickham.
  # https://www.jstatsoft.org/article/view/v040i01/v40i01.pdf
  
  # 0. Type check.
  expected(x, 'character')
  
  # 1. Split.
  splits <- sapply(x, strsplit, split = NULL)
  
  # 2. Apply Jumble.
  jumble <- lapply(splits, sample)
  
  names(jumble) <- NULL # Juxtaposition of original attributes and sampled vector is confusing.
  
  # 3. Combine.
  output <- sapply(jumble, paste0, sep = '', collapse = '')
  
  output
  
}