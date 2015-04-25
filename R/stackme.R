#' Search Stack Overflow for your most recent error message.
#'
#' @export
tracestack <- function() {
  last_error <- geterrmessage()
  if (is.null(last_error)) {
    stop("No error message available")
  }

  query <- URLencode(paste("[r]", last_error))
  browseURL(paste0("http://stackoverflow.com/search?q=", query))
}
