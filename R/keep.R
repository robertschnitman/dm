#' Keep rows a la Stata
#' 
#' @description A shorthand for \code{subset}.
#' 
#' @usage keep(x, ...)
#'
#' @param x An object, typically a data frame.
#' @param ... Parameters passed to \code{subset}.
#' 
#' @example keep(mtcars, between(mpg, 18, 21))
#'
#' @seealso \url{https://github.com/robertschnitman/dm}, \url{https://www.stata.com/manuals13/gsw12.pdf}

keep <- function(x, ...) subset(x, ...) # a la` Stata