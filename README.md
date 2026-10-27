# R package "ryotaro"

## Description

An in-depth paragraph about your project and overview of use.

## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* Bullet1
* Bullet 2
```
install.packages("remotes")
remotes::install_github("RyotaroHiraki/ryotaro")
```

### Descriptive statistics

All three functions accept `data`, `vars = NULL`, and `digits = 2`. By default,
they summarize all numeric variables with N, Mean, SD, Min, and Max.

```r
library(ryotaro)
desc_table(mtcars, vars = c("mpg", "hp", "wt")) # data.frame
desc_md(mtcars, vars = c("mpg", "hp", "wt"))    # Markdown table
desc_latex(mtcars, vars = c("mpg", "hp", "wt")) # LaTeX table
```

Each R script can be sourced independently. Neither `R/desc_md.R` nor
`R/desc_latex.R` requires sourcing `R/desc_table.R` first. The Markdown and
LaTeX outputs require the `knitr` package to be installed.

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

Ryotaro Hiraki
[@LinkedIn](https://www.linkedin.com/in/ryotaro-hiraki-economics-education-data-machine-learning/)

ex. Dominique Pizzie  
ex. [@DomPizzie](https://twitter.com/dompizzie)

## Version History
* 0.1
    * Initial Release
