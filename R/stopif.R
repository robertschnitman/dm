stopif <- function(cond, msg = 'Stop condition met.', ...) {
  
  if (cond) stop(msg, ...)
  
}