#' A ggplot2 theme based on the Google Exo font.
#'
#' @param base_size Font size. Default at 12 pts.
#' @param base_family Font family. Default is "Exo"
#' @param base_line_size Base line size
#' @param base_rect_size Base rex size
#' @import ggplot2
#'
#' @inheritParams ggplot2::theme_light
#'
#' @export
#'
theme_exo <-
  function(base_size = 12,
             base_family = "Exo",
             base_line_size = base_size / 22,
             base_rect_size = base_size / 22) {
    half_line <- base_size / 2

    update_geom_defaults("text", list(family = "Exo"))

    tm <-
      theme_light(
        base_size = base_size,
        base_family = base_family,
        base_line_size = base_line_size,
        base_rect_size = base_rect_size
      ) +
      theme(
        strip.text = element_text(colour = "#414141"),
        strip.background = element_rect(fill = "#CFCFCF"),
        plot.title = element_text(size = base_size * 1.8, hjust = 0, vjust = 1, face = "bold", margin = margin(b = half_line * 1.2)),
        plot.subtitle = element_text(size = base_size, hjust = 0, vjust = 1, margin = margin(b = half_line * 0.9)),
        plot.caption = element_text(size = rel(0.9), hjust = 1, vjust = 1, margin = margin(t = half_line * 0.9))
      )

  }


#' Import Google Exo font
#' @export
import_exo <- function() {
  ps_font_dir <- system.file("fonts", "exo", package = "ggpmthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(ps_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      ps_font_dir
    )
  )
}
