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

## `recode()`

The `recode()` function is a new way to switch values. You provide three inputs: 

1. A vector,
1. An initial set of values to replace, and 
1. A set of values to replace the initial ones.


```r
recode(mtcars$am, 0:1, 2:3)
```

```
##  [1] 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3 2 3
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

# Reference

Stata. *missing()*. https://www.stata.com/manuals13/m-5missing.pdf
