load_libraries <- function(x) {
  
  stopifnot(is.character(x))
  
  for (i in x) {
    
    if (!require(i, character.only = TRUE)) {
      
      install.packages(i)
      library(i, character.only = TRUE)
      
    }
    
  }
  
}