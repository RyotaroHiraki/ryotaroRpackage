#' Create a Markdown descriptive statistics table
#'
#' @param data A data frame.
#' @param vars Character vector of variable names. If NULL, all numeric variables are used.
#' @param digits Number of digits to round numeric statistics.
#'
#' @return A Markdown pipe table produced by knitr::kable().
#' @export
#'
#' @examples
#' desc_md(mtcars)
#' desc_md(mtcars, vars = c("mpg", "hp", "wt"))
desc_md <- function(data, vars = NULL, digits = 2) {
  if (is.null(vars)) {
    vars <- names(data)[sapply(data, is.numeric)]
  }

  desc <- data.frame(
    Variable = vars,
    N = sapply(data[vars], function(x) sum(!is.na(x))),
    Mean = sapply(data[vars], function(x) mean(x, na.rm = TRUE)),
    SD = sapply(data[vars], function(x) stats::sd(x, na.rm = TRUE)),
    Min = sapply(data[vars], function(x) min(x, na.rm = TRUE)),
    Max = sapply(data[vars], function(x) max(x, na.rm = TRUE))
  )

  desc[, c("Mean", "SD", "Min", "Max")] <- round(
    desc[, c("Mean", "SD", "Min", "Max")],
    digits
  )

  knitr::kable(
    desc,
    format = "pipe",
    caption = "Descriptive statistics"
  )
}
