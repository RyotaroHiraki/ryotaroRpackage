#' Create a descriptive statistics data frame
#'
#' @param data A data frame.
#' @param vars Character vector of variable names. If NULL, all numeric variables are used.
#' @param digits Number of digits to round numeric statistics.
#'
#' @return A data frame with Variable, N, Mean, SD, Min, and Max columns.
#' @export
#'
#' @examples
#' desc_table(mtcars)
#' desc_table(mtcars, vars = c("mpg", "hp", "wt"))
desc_table <- function(data, vars = NULL, digits = 2) {
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

  desc
}
