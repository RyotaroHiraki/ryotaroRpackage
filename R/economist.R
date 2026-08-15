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

scale_color_economist <- function(...) {
  ggthemes::scale_color_economist(...)
}

scale_fill_economist <- function(...) {
  ggthemes::scale_fill_economist(...)
}