#' Ryotaro's ggplot2 theme
#'
#' @param base_size Base font size.
#' @param base_family Base font family.
#'
#' @return A ggplot2 theme.
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() +
#'   theme_ryotaro()
theme_ryotaro <- function(base_size = 12, base_family = "") {
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) +
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      axis.title = ggplot2::element_text(face = "bold"),
      plot.title = ggplot2::element_text(
        face = "bold",
        size = base_size * 1.2
      ),
      plot.subtitle = ggplot2::element_text(
        size = base_size
      ),
      legend.position = "bottom"
    )
}