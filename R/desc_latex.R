#' Create a LaTeX descriptive statistics table
#'
#' @param data A data frame.
#' @param vars Character vector of variable names. If NULL, all numeric variables are used.
#' @param digits Number of digits to round numeric statistics.
#'
#' @return A LaTeX table produced by knitr::kable().
#' @export
#'
#' @examples
#' desc_latex(mtcars)
#' desc_latex(mtcars, vars = c("mpg", "hp", "wt"))

desc_latex <- function(data, vars = NULL, digits = 2) {
  if (is.null(vars)) {
    vars <- names(data)[sapply(data, is.numeric)]
  }

  format_stat <- function(x) {
    x <- round(x, digits)
    out <- format(x, trim = TRUE, scientific = FALSE, nsmall = digits)
    if (digits == 0) return(out)
    sub("\\.$", "", sub("0+$", "", out))
  }

  desc <- data.frame(
    Variable = vars,
    Mean = sapply(data[vars], function(x) mean(x, na.rm = TRUE)),
    SD = sapply(data[vars], function(x) stats::sd(x, na.rm = TRUE)),
    Min = sapply(data[vars], function(x) min(x, na.rm = TRUE)),
    Max = sapply(data[vars], function(x) max(x, na.rm = TRUE)),
    N = sapply(data[vars], function(x) sum(!is.na(x)))
  )

  desc[, c("Mean", "SD", "Min", "Max")] <- lapply(
    desc[, c("Mean", "SD", "Min", "Max")],
    format_stat
  )

  knitr::kable(
    desc,
    format = 'latex',
    align = c("l", "r", "r", "r", "r", "r"),
    booktabs = TRUE,
    caption = "Descriptive statistics",
    row.names = FALSE
  )
}
