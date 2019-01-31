### a la` SQL's between condition.
## (INPUT, OUTPUT) = (vector, boolean)

between <- function(x, low, high, inclusive = TRUE)  { # SQL's between clause is inclusive (see link below).
    
    if (inclusive == FALSE) {
        
        x > low & x < high
        
    } else { # https://www.w3schools.com/sql/sql_between.asp
        
        x >= low & x <= high
        
    }
    
}
