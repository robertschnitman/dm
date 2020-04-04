#' Flag a zero at the start of a value
#'  
#' @description Flag a zero at the start of a value. Useful for formatting numbers with a specified number of digits such as Social Security Numbers.
#' 
#' @usage zero_flag(x, w, format = 'd')
#'
#' @param x A vector.
#' @param w Width.
#' @param format Based on \code{format} in \code{formatC}.
#' 
#' @example zero_flag(700, 4) # == '0700'
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

zero_flag <- function(x, w, format = 'd') {
  
  formatC(x, width = w, format = format, flag = '0')
  
}
