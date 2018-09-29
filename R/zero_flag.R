### PURPOSE: Flag a zero at the beginning of a value if it does not meet a specified width.

zero_flag <- function(x, w) formatC(x, width = w, format = 'd', flag = '0') # e.g. zero_flag(700, 4) == '0700'