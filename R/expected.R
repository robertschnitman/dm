# GOAL: Stop a function from executing if a specific class is not expected.
# (INPUT, OUTPUT) = (any, 1-element vector)

expected <- function(x, expect) {
  
  if (class(x) != expect) {
    
    stop(paste0('Class "', expect, '" expected. Received class ', class(x), '.')) 
    
  }
  
}
