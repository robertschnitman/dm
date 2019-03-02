### PURPOSE: Flag a zero at the beginning of a value if it does not meet a specified width.

zero_flag <- function(x, w, format = 'd') formatC(x, width = w, format = format, flag = '0') # e.g. zero_flag(700, 4) == '0700'
