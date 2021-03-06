% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fill.R
\name{fill}
\alias{fill}
\title{Fill in a vector's missing values while maintaining proportions}
\usage{
fill(x)
}
\arguments{
\item{x}{A vector.}
}
\description{
Fill in missing values in a vector while maintaining proportions. Useful for state reporting.
}
\details{
When reporting the gender distribution of a school to U.S. state education agencies, for example, you may have missing student data on gender but are still required to produce the full count of students. The \code{fill} function can be useful in this regard, as it will fill in missing values while maintaining the existing proportions of the unique values (excluding NA values).
}
\seealso{
\url{https://github.com/robertschnitman/dm}
}
