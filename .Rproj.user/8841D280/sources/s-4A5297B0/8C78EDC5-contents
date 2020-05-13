#' Fill in a vector's missing values while maintaining proportions
#' 
#' @description Fill in missing values in a vector while maintaining proportions. Useful for state reporting.
#' 
#' @usage fill(x)
#'
#' @param x A vector.
#' 
#' @details When reporting the gender distribution of a school to U.S. state education agencies, for example, you may have missing student data on gender but are still required to produce the full count of students. The \code{fill} function can be useful in this regard, as it will fill in missing values while maintaining the existing proportions of the unique values (excluding NA values).
#' 
#' @example set.seed(1)
#' k <- c(0, 1, NA, 1, 0, NA, NA, NA)
#'
#' fill_k <- fill(k)
#'
#' cbind(k, fill_k)
#'
#' table(fill_k)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

fill <- function(x) { 
  
  # x should be a vector.
  stopifnot(is.vector(x))
  
  # Parameters for sample() for easier reference.
  
  ## Proportions should be based on unique values in X
  unique_x <- unique(na.omit(x)) 
  
  ## For easier referencing of the NA values and their length.
  x_na     <- is.na(x) # To detect where the NAs are.
  len_x_na <- length(x_na) # For the "size" input of sample().
  
  ## sample()'s prob should be set to the pre-existing proportions.
  props    <- prop.table(table(x))
  
  
  # OUTPUT = the existing dataset where the initial NAs are replaced
  #  with the unique values of x while maintaining proportions.
  x[x_na]  <- sample(unique_x,len_x_na, replace = TRUE, prob = props)
  
  x
  
}
