scale_color_ryotaro <- function(...) {
  ggplot2::scale_color_manual(
    values = color_palette(),
    ...
  )
}