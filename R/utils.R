#' Equal breaks for ggplot2 facets
#'
#' @param n Number of breaks
#' @param s Scaling factor (cf. multiplicative expand)
#' @details Code copied from: https://stackoverflow.com/questions/28436855/change-the-number-of-breaks-using-facet-grid-in-ggplot2
#'
#' @return
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(x = disp, y = drat)) +
#' geom_point() +
#' facet_wrap(~cyl, scales = "free_x") +
#' scale_x_continuous(breaks = equal_breaks(n = 4))
#'
equal_breaks <- function(n = 3, s = 0.05) {
  function(x) {
    # rescaling
    d <- s * diff(range(x)) / (1 + 2 * s)
    seq(min(x) + d, max(x) - d, length = n)
  }
}
