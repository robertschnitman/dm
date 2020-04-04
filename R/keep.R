#' Keep rows a la Stata
#' 
#' @description A shorthand for \code{subset}.
#' 
#' @usage keep(x, ...)
#'
#' @param x An object, typically a data frame.
#' @param ... Parameters passed to \code{subset}.
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

keep <- function(x, ...) subset(x, ...) # a la` Stata