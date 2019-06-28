#' A ggplot2 theme based on the Google Poppins font.
#'
#' @param base_size Font size. Default at 12 pts.
#' @param base_family Font family. Default is "Poppins"
#' @param base_line_size Base line size
#' @param base_rect_size Base rex size
#' @import ggplot2
#'
#' @inheritParams ggplot2::theme_light
#'
#' @export
#'
theme_poppins <-
  function(base_size = 12,
             base_family = "Poppins",
             base_line_size = base_size / 22,
             base_rect_size = base_size / 22) {
    half_line <- base_size / 2

    update_geom_defaults("text", list(family = "Poppins"))

    tm <-
      theme_light(
        base_size = base_size,
        base_family = base_family,
        base_line_size = base_line_size,
        base_rect_size = base_rect_size
      ) +
      theme(
        strip.text = element_text(colour = "#414141"),
        strip.background = element_rect(fill = "#CFCFCF")
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
