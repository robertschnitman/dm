# a la` SQL's between condition.

between <- function(x, low, high, inclusive = FALSE)  {
    
    if (inclusive == FALSE) {
        
        x > low & x < high
        
    } else {
        
        x >= low & x <= high
        
    }
    
}