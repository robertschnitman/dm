#' Deduplicate a data frame.
#' 
#' @description Deduplicates a data frame.
#' 
#' @usage dedup(x, ...)
#' dup_rows(x)
#' dup_nrow(x)
#' dup_mark(x)
#'
#' @param x A data frame.
#' @param ... Additional parameters passed to \code{unique()}.
#' 
#' @details \code{dedup()} removes duplicates from a data frame. Same as casting \code{unique()} on a data frame.
#' 
#' \code{dup_rows()} finds the duplicated rows in a data frame.
#' 
#' \code{dup_nrow} counts the number of duplicates.
#' 
#' \code{dup_mark} codes duplicate rows with a 1; otherwise, 0.
#' 
#' @examples dedup(iris$Species)
#' dup_rows(iris)
#' dup_mark(iris)
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

#' @rdname dedup
dedup <- function(x, ...) {
  
  # x[!duplicated(x, ...), ] # 0.02 second slower than x[!duplicated(x), ] manually.
  
  unique(x, ...) # 0.01 second faster than the same.
  
}

#' @rdname dup_rows
dup_rows <- function(x) x[duplicated(x), ]

#' @rdname dup_nrow
dup_nrow <- function(x) NROW(dup_rows(x))

#' @rdname dup_mark
dup_mark <- function(x) ifelse(duplicated(x), 1, 0)
