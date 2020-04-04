#' Rename files
#' 
#' @description Rename files in your directory.
#' 
#' @usage rename_file(filepath, pattern_now, pattern_new)
#'
#' @param filepath Desired directory of where the files to be renamed are.
#' @param pattern_now Regular expression pattern of the file names as they are CURRENTLY.
#' @param pattern_new Desired string to replace the file names detected in \code{pattern_now}.
#' 
#' @details Renames files in a specified directory based on a given pattern.
#'
#' @seealso \url{https://github.com/robertschnitman/dm}

rename_file <- function(filepath, pattern_now, pattern_new) {
  
  setwd(filepath)
  
  myfiles <- list.files(path = filepath, pattern = pattern_now)
  
  new_names <- gsub(pattern_now, pattern_new, myfiles)
  
  file.rename(myfiles, new_names)
  
}