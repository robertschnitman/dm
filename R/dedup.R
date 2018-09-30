# Removing and finding duplicates.
# duplicated() is slow. How to make it fast like dplyr::distinct?

dedup <- function(x, ...) {
  
  # x[!duplicated(x, ...), ] # 0.02 second slower than x[!duplicated(x), ] manually.
  
  unique(x, ...) # 0.01 second faster than the same.
  
}

dup_rows <- function(x) x[duplicated(x), ]

dup_nrow <- function(x) NROW(dup_rows(x))

dup_mark <- function(x) ifelse(duplicated(x), 1, 0)
