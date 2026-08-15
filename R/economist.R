#This is from ggthemes- theme_economist

theme_economist <- function(base_size = 10,
                          base_family = "sans",
                          horizontal = TRUE,
                          dkpanel = FALSE) {
  ggthemes::theme_economist(
    base_size = base_size,
    base_family = base_family,
    horizontal = horizontal,
    dkpanel = dkpanel
  )
}

theme_economist_white <- function(base_size = 11,
                          base_family = "sans",
                          grey_bg = TRUE,
                          horizontal = TRUE) {
  ggthemes::theme_economist_white(
    base_size = base_size,
    base_family = base_family,
    grey_bg = grey_bg,
    horizontal = horizontal,
  )
}

scale_color_economist <- function(...) {
  ggthemes::scale_color_economist(...)
}

scale_fill_economist <- function(...) {
  ggthemes::scale_fill_economist(...)
}