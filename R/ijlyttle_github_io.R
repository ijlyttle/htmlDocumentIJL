#' html_document() for ijlyttle_github_io
#'
#' @param ... arguments passed to
#'   \code{rmarkdown::\link[rmarkdown]{html_document}}
#'
#' @seealso \url{http://rmarkdown.rstudio.com/developer_custom_formats.html}
#'
#' @return R Markdown output format to pass to
#'   \code{rmarkdown::\link[rmarkdown]{render}}
#'
#' @examples
#' \dontrun{
#'   rmarkdown::render("foo.Rmd", ijlyttle_github_io())
#' }
#' @export
#
ijlyttle_github_io <- function(...){

  format_html_document <- rmarkdown::html_document(...)

  # here, we mess with the list - not using the API - so do this
  # at your own risk

  format_html_document$knitr$opts_chunk$comment <- ""

  format_html_document
}

