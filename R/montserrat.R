#' A ggplot2 theme based on the Google Montserrat font.
#'
#' @param base_size Font size. Default at 12 pts.
#' @param base_family Font family. Default is "Montserrat"
#' @param base_line_size Base line size
#' @param base_rect_size Base rect size
#' @import ggplot2
#'
#' @inheritParams ggplot2::theme_light
#'
#' @export
#'
theme_montserrat <-
  function(base_size = 12,
             base_family = "Montserrat",
             base_line_size = base_size / 22,
             base_rect_size = base_size / 22) {
    theme_light_modified(base_size, base_family, base_line_size, base_rect_size)
  }


#' Import Google Montserrat font
#' @export
import_montserrat <- function() {
  ps_font_dir <- system.file("fonts", "montserrat", package = "ggpmthemes")

  suppressWarnings(suppressMessages(extrafont::font_import(ps_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      ps_font_dir
    )
  )
}
