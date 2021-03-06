#' Condition on a vector similar to SQL's between clause
#' 
#' @description Condition on a vector similar to SQL's between clause
#' 
#' @usage between(x, low, high, inclusive = TRUE)
#'
#' @param x A vector.
#' @param low Lower limit
#' @param high Upper Limit
#' @param inclusive If set to \code{TRUE}, then the condition is inclusive of what are set for \code{low} and \code{high}. Other, the "between" is literal.
#' 
#' @return A vector.
#' 
#' @examples
#' k <- 1:100
#' between(k, 5, 24)
#' 
#' subset(mtcars, between(mpg, 18, 21, inclusive = FALSE))
#' @seealso \url{https://github.com/robertschnitman/dm}

between <- function(x, low, high, inclusive = TRUE)  { # SQL's between clause is inclusive (see link below).
    
  # https://www.w3schools.com/sql/sql_between.asp
    if (inclusive == TRUE) { 
        
      x >= low & x <= high
        
    } else { 
        
      x > low & x < high # Literal "between".
        
    }
    
}
