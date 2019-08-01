rename_file <- function(filepath,    # Directory of files whose names will be replaced.
                        pattern_now, # String pattern of current filenames.
                        pattern_new  # String to replace the previous pattern.
                        ) {
  
  setwd(filepath)
  
  myfiles <- list.files(path = filepath, pattern = pattern_now)
  
  new_names <- gsub(pattern_now, pattern_new, myfiles)
  
  file.rename(myfiles, new_names)
  
}
