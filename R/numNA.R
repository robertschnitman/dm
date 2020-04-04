#' Count the number of missing values in a dataset
#' 
#' @description Count the number of missing values in a dataset.
#' 
#' @usage numNA(x, m)
#' rowNA(x)
#' colNA(x)
#'
#' @param x An object, usually a data frame.
#' @param m Margin. 1 for row-wise, 2 for column-wise.
#' 
#' @return A vector.
#' 
#' @details Similar to Stata, \code{numNA} counts the number of missing values: if \code{m} is set to 1, then it counts the number of missing values per row; if set to 2, then it counts the number of missing values per column; otherwise, it counts the total number of missing values.
#' 
#' @examples numNA(airquality)
#' rowNA(airquality)
#' colNA(airquality)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}, \url{https://www.stata.com/manuals13/m-5missing.pdf}


#' @rdname numNA
numNA <- function(x, m = NULL) {
  
  # a la` Stata's egen rowmiss().
  
  lenna <- function(y) length(y[is.na(y)])
  
  if (is.null(m)) {
    
    output <- lenna(x)
    
  } else {
    
    output <- apply(x, m, lenna)
  }
  
  output
  
}

#' @rdname rowNA
rowNA <- function(x) numNA(x, 1)

#' @rdname colNA
colNA <- function(x) numNA(x, 2)
