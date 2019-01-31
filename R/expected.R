expected <- function(x, expect) {
  
  if (class(x) != expect) {
    
    stop(paste0('Class "', expect, '" expected. Received class ', class(x), '.')) 
    
  }
  
}