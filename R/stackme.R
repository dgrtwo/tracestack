.onLoad <- function(libname, pkgname) {
  options(error = function(e) options(last_error = geterrmessage()))
}

#' Search Stack Overflow for your most recent error message.
#'
#' @export
stackme <- function() {
  browseUrl(paste0("http://stackoverflow.com/?q=", URLencode(getOption("lasterror"))
}
