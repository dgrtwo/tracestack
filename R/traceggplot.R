#' Search the ggplot2 mailing list for your most recent error message.
#'
#' @export
traceggplot <- function() {
  last_error <- geterrmessage()
  if (is.null(last_error)) {
    stop("No error message available")
  }

  query <- URLencode(last_error)
  browseURL(paste0("https://groups.google.com/forum/#!searchin/ggplot2/", query))
}
