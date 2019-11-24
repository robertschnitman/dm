### Renaming files:
# myfiles   <- list.files()
# new_names <- gsub('Fall 2018', 'Spring 2019', myfiles)
# file.rename(myfiles, new_names)
###

rename_file <- function(filepath,    # Directory of files whose names will be replaced.
                        pattern_now, # String pattern of current filenames.
                        pattern_new  # String to replace the previous pattern.
                        ) {
  
  setwd(filepath)
  
  myfiles <- list.files(path = filepath, pattern = pattern_now)
  
  new_names <- gsub(pattern_now, pattern_new, myfiles)
  
  file.rename(myfiles, new_names)
  
}
### filepath = Desired directory of where the files to be renamed are.
### pattern_now = regular expression pattern of the file names as they are CURRENTLY.
### pattern_new = Desired string to replace the file names detected in pattern_now.

# rename_file('J:/IRO/Schnitman/R/RStudio Cheat Sheets','RStudio Cheat Sheet - ', 'RSCS_')

# rename_file('J:/IRO/Snap Webhost Surveys/Schnitman/Nursing/Evaluations/2019/Spring/Data/','Copy', 'Original')

#rename_file('J:/IRO/Snap Webhost Surveys/Schnitman/Nursing/Evaluations/2019/Spring/Data/','2019', '2019v1')

#rename_file('C:/Users/crispychicken/Documents/MEGA/Personal/Money/Taxes/2019/Reports', '_', ' ')