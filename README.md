---
title: "dm: statistical data management tools for R"
author: "Robert Schnitman"
date: "April 4, 2020"
output: 
  html_document:
    keep_md: true
---

# Introduction

The `dm` package is inspired by the data management functions in other statistical packages such as Stata and SPSS. The purpose of this package is to simplify data management/checking.

# Installation

Currently, this package is only available on Github, so please use `devtools` to install this package.


```r
if (!require(devools)) {
  
  install.packages('devtools')
  library(devtools)
  
}

install_github('robertschnitman/dm')
```


```r
library(dm)
```


# Examples

## `swap()`

The `swap()` function presents an [SPSS-like way to recode values](https://libguides.library.kent.edu/SPSS/RecodeVariables). It is essentially a vectorized `switch()`.


```r
swap(iris$Species, setosa = 4, versicolor = 5, virginica = 6)
```

```
##   [1] 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4
##  [38] 4 4 4 4 4 4 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
##  [75] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 6 6 6 6 6 6 6 6 6 6 6
## [112] 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6
## [149] 6 6
```

## `numNA()`

[As inspired by Stata](https://www.stata.com/manuals13/m-5missing.pdf), `numNA()` counts the number of missing values in a dataset; `rowNA()` counts the number of missing values by row; and `colNA()` counts the number of missing values by column.

[^1]: 


```r
numNA(airquality) # Total number of missing values.
```

```
## [1] 44
```

```r
rowNA(airquality) # Number of missing values by row.
```

```
##   [1] 0 0 0 0 2 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 0 0 0 0 1 1 1 1 1 1
##  [38] 0 1 0 0 1 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0
##  [75] 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 0 0 0 1 0 0 0 0
## [112] 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
## [149] 0 1 0 0 0
```

```r
colNA(airquality) # Number of missing values by column.
```

```
##   Ozone Solar.R    Wind    Temp   Month     Day 
##      37       7       0       0       0       0
```

## `load_libraries`()

The `load_libraries()` function tests whether a set of libraries has been installed: if not, then it installs and loads them; if already installed, then the function loads the libraries as intended.


```r
load_libraries(c('tidyverse', 'ggformula', 'abind'))
```

# References

Kent State University. *SPSS Recode*. https://libguides.library.kent.edu/SPSS/RecodeVariables

Stata. *missing()*. https://www.stata.com/manuals13/m-5missing.pdf
