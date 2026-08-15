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
theme_ryotaro <- function(base_size = 12, base_family = "Helvetica Neue") {
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) +
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(
        colour = scales::alpha("grey", 0.3),
        linewidth = 0.2
      ),
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


color_palette <- function(palette = "personal") {
  switch(
    palette,
    main = c(
      "#2B6CB0",
      "#DD6B20",
      "#2F855A",
      "#805AD5"
    ),
    muted = c(
      "#4E79A7",
      "#F28E2B",
      "#59A14F",
      "#B07AA1"
    ),
    personal = c(
      "#D95964",
      "#2b463a",
      "#c79e89",
      "#60381e",
      "#dacec1",
      "#818376",
      "#DDDDDD",
      "#777777",
      "#FFFFFF",
      "#000000"

    ),
    stop("Unknown palette: ", palette)
  )
}

scale_color_ryotaro <- function(...) {
  ggplot2::scale_color_manual(
    values = color_palette(),
    ...
  )
}

scale_fill_ryotaro <- function(...) {
  ggplot2::scale_fill_manual(
    values = color_palette(),
    ...
  )
}