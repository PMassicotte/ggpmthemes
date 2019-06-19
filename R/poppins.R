#' A ggplot2 theme based on the Google Poppins font.
#'
#' @param base_size Font size. Default at 12 pts.
#' @param base_family Font family. Default is "Poppins"
#' @param base_line_size Base line size
#' @param base_rect_size Base rex size
#'
#' @export
#'
theme_poppins <-
  function(base_size = 12,
             base_family = "Poppins",
             base_line_size = base_size / 22,
             base_rect_size = base_size / 22) {
    half_line <- base_size / 2
    theme_grey(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ) %+replace%
      theme(
        panel.background = element_rect(
          fill = "white",
          colour = NA
        ),
        panel.border = element_rect(
          fill = NA,
          colour = "grey70",
          size = rel(1)
        ),
        panel.grid = element_line(colour = "grey87"),
        panel.grid.major = element_line(size = rel(0.5)),
        panel.grid.minor = element_line(size = rel(0.25)),
        axis.ticks = element_line(colour = "grey70", size = rel(0.5)),
        legend.key = element_rect(fill = "white", colour = NA),
        strip.background = element_rect(
          fill = "#CFCFCF",
          colour = NA
        ),
        strip.text = element_text(
          colour = "#414141",
          size = rel(0.8),
          margin = margin(
            0.8 * half_line,
            0.8 * half_line, 0.8 * half_line, 0.8 * half_line
          )
        ),
        complete = TRUE
      )
  }


#' Import Google Poppins font
#' @export
import_poppins <- function() {
  ps_font_dir <- system.file("fonts", "poppins", package = "ggpmthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(ps_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      ps_font_dir
    )
  )
}
