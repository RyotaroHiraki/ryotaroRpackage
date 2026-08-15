color_palette <- function(palette = "main") {
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
      "#dacec1",
      "#818376",
      "#c79e89",
      "#60381e",
      "#DDDDDD",
      "#777777",
      "#FFFFFF",
      "#000000"

    ),
    stop("Unknown palette: ", palette)
  )
}