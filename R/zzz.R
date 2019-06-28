.onAttach <- function(libname, pkgname) {

  # https://github.com/wch/extrafont/issues/44
  pdfFonts <- grDevices::pdfFonts
  postscriptFonts <- grDevices::postscriptFonts
  windowsFonts <- grDevices::windowsFonts

  if (.Platform$OS.type == "windows") {
    if (interactive()) packageStartupMessage("Registering Windows fonts with R")
    extrafont::loadfonts("win", quiet = TRUE)
  } else {
    if (interactive()) packageStartupMessage("Registering PDF & PostScript fonts with R")
    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)
  }

  fnt <- extrafont::fonttable()
  if (!any(grepl("Poppins", fnt$FamilyName))) {
    packageStartupMessage("Poppins font was not found. Please install it with ggpmthemes::import_poppins().")
  }
}
