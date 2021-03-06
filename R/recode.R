#' Compact and literal vectorized switch().
#' 
#' @description Recode variables in a simple manner OR recode variables a la SPSS style.
#' 
#' @usage recode(x, initial, new)
#' recode_all <- function(x, ...)
#' NAvl(x, v)
#' NAvl0(x)
#' switchv(x, ...)
#' swap(x, ...)
#' switchv_all(x, ...)
#' 
#' @param x A vector.
#' @param initial Initial set of values--i.e., values to be replaced.
#' @param new New set of values--i.e., values to replace the initial ones.
#' @param v Value to replace a missing value.
#' @param ... Parameters passed to \code{recode} in the case of \code{recode_all} or parameters passed to \code{switch} in the case of \code{switchv}, \code{swap}, and \code{switchv_all}
#' 
#' @return A vector
#' 
#' @details \code{recode} replaces an initial set of values with a new set of values for a vector.
#' 
#' \code{recode_all} applies \code{recode} to all columns in a dataset.
#' 
#' \code{NAvl} replaces a vector's missing values with a specified value set in \code{v}.
#' 
#' \code{NAvl0} replaces a vector's missing values with 0.
#' 
#' \code{switchv} behaves the same as \code{switch} except that it applies to a vector (i.e., it is a vectorized version of the latter). \code{swap} is its synonym.
#' 
#' \code{switchv_all} applies \code{switchv} to all columns in a data frame.
#' 
#' @examples recode(mtcars$am, 0:1, 2:3)
#' 
#' with(airquality, NAvl(Ozone, mean(Ozone, na.rm = TRUE)))
#' 
#' switchv(iris$Species, setosa = 1, versicolor = 2, virginica = 3)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

#' @rdname recode
recode <- function(x, initial, new) {
  # assumes initial/new are in the appropriate order.
  
  # Users may want to replace a set of values with a single element.
  if (length(new) == 1) { 
    
    output <- replace(x, x %in% initial, new)
    
  } else if (length(initial) == length(new)) {
    
    keys <- data.frame(iv = initial, nv = new)
    
    xi <- data.frame(id = 1:length(x),
                     iv = x)
    
    m <- merge(xi, keys,
               by    = 'iv', 
               all.x = TRUE, 
               sort  = FALSE)
    
    output <- m$nv[order(m$id)]
    
  } else {
    
    li <- length(initial)
    ln <- length(new)
    
    ltest <- paste0('Length of the initial set is ', li, ' and the length of the new values is ', ln, '. ')
    
    lcond <- 'Length of replacement vector must be either 1 or the same as the original.'
    
    stop(paste0(ltest, lcond))
    
  }
  
  output
  
}

#' @rdname recode_all
recode_all <- function(x, ...) sapply(x, function(y) recode(y, ...))

#' @rdname NAvl
NAvl <- function(x, v) { # similar to SQL's nvl(), but for NAs. Shorthand.

  replace(x, is.na(x), v)
  
}

#' @rdname NAvl0
NAvl0 <- function(x) { # Switch all NAs to 0.
  
  NAvl(x, 0)
  
}

#' @rdname switchv
switchv <- function(x, ...) {
  
  codes <- function(z) switch(z, ...)
  
  output <- sapply(x, codes)
  
  output
  
}

#' @rdname swap
swap <- switchv # synonym for more concise coding. Maintain switchv() for RStudio's predictive text.

#' @rdname switchv_all
switchv_all <- function(x, ...) sapply(x, function(y) switchv(y, ...))
#swap_all    <- switchv_all # swap(mtcars, `0` = 'a') # Error in swap(mtcars, `0` = "a") :  Vector expected. Received data.frame.

#' @rdname swap_all
swap_all <- switchv_all
