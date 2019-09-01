type <- typeof # yep.

type_class <- function(x) c(type = type(x), class = class(x)) # Know type and class simultaneously.

tc <- type_class # shortcut
