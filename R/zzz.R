.onAttach <- function(libname, pkgname) {
  if (.Platform$OS.type == "windows") { # nocov start
    extrafont::loadfonts("win", quiet = TRUE)
  } else {
    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)
  }

  fnt <- extrafont::fonttable()
  if (!any(grepl("Poppins", fnt$FamilyName))) {
    packageStartupMessage("Poppins font was not found. Please install it with ggpmthemes::import_poppins().")
  }
}
