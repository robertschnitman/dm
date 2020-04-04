#' Shortcut functions for knowing types and classes of objects
#' 
#' @description Shortcut functions for knowing types and classes of objects
#' 
#' @usage type(x)
#' type_class(x)
#' tc(x)
#'
#' @param x An object.
#' 
#' @details \code{type} provides the type of an object. \code{type_class} provides the type and class of an object--\code{tc} is a synonym.
#' 
#' @examples type(mtcars)
#' type_class(mtcars)
#' tc(mtcars)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

type <- typeof # yep.

type_class <- function(x) c(type = type(x), class = class(x)) # Know type and class simultaneously.

tc <- type_class # shortcut
