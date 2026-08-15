scale_fill_ryotaro <- function(...) {
  ggplot2::scale_fill_manual(
    values = color_palette(),
    ...
  )
}