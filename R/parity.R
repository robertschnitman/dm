#' Parity functions for determining even and odd values.
#'
#' @param x Numeric (integer).
#' 
#' @return Vector (Boolean, numeric, character).
#' 
#' @examples
#' is.even(1)
#' is.even(mtcars$carb)
#' is.odd(2)
#' is.odd(mtcars$carb)
#' get_odd(mtcars$carb)
#' get_even(mtcars$carb)
#' parity(mtcars$carb)
#' 
#' @seealso \url{https://github.com/robertschnitman/afp}; `iseven()` and `isodd` in \url{https://docs.julialang.org/en/release-0.4/stdlib/numbers/}
#' @name parity
NULL
#> NULL

#' @rdname parity
is.even <- function(x) x %% 2 == 0

#' @rdname parity
is.odd <- function(x) x %% 2 == 1

#' @rdname parity
get_even <- function(x) x[is.even(x)]

#' @rdname parity
get_odd <- function(x) x[is.odd(x)]

#' @rdname parity
parity <- function(x) ifelse(is.even(x), 'even', 'odd')
