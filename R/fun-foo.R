#' example function
#'
#' A simple function to demonstrate how functions work.
#'
#' This is a not so simple function that does a simple task:
#' given a character string it can change its case and character spacing,
#' as well as add some text in front of it.
#'
#' @section Purpose:
#' The purpose of this function is to demonstrate how functions work.
#'
#' \code{foo} has four arguments.
#' The first has no default and the function will throw an error if it is not supplied.
#' The second has three possible values that can be partially matched and the first one is the default.
#' The third has a default but can be set to any value, possibly generating warnings.
#' The fourth is optional and defaults to \code{NULL}.
#' The fifth is not evaluated at all.
#'
#' @param x character vector
#' @param case case that \code{x} will be put in: "upper", "lower" or "sentence";
#'             can be specified in full or by partial match, e.g. the just first letter
#' @param spacing integer specifying character spacing in \code{x}
#' @param add (optional) text added before each string
#' @param ignore ignored argument
#'
#' @return A character string composed of \code{added} text and \code{x}.
#'
#' @export
#'
#' @examples
#' foo("bar", case = "sentence", spacing = 1)
#'

foo <- function(x, case = c("lower", "upper", "sentence"), spacing = 0,
                add = NULL, ignore = stop("STOP THIS MADNESS!")) {

  if (length(x) == 0) return(x)
  if (spacing < 0) {
    warning("spacing is negative and will be set to 0")
    spacing <- 0L
    }
  if (spacing != as.integer(spacing)) warning("spacing will be rounded down to the nearest integer")

  case <- match.arg(arg = case, choices = c('lower', 'upper', 'sentence'))

  insert <- function(x, spacer) {
    y <- strsplit(x, split = '')
    Y <- vapply(y, paste, character(1), collapse = spacer, USE.NAMES = FALSE)
    return(Y)
  }

  if (case == 'sentence') {
    firstup <- function(x) {
      if (nchar(x) == 0) {
        return(x)
      } else if (nchar(x) == 1) {
        return(toupper(x))
      } else {
        ans <- paste0(toupper(substr(x, 1, 1)), substr(x, 2, nchar(x)))
        return(ans)
      }
    }
    tosentence <- function(x) {
      y <- strsplit(x, split = ' ')
      Y <- lapply(y, function(x) vapply(x, firstup, character(1), USE.NAMES = FALSE))
      Z <- vapply(Y, paste, character(1), collapse = ' ', USE.NAMES = FALSE)
      return(Z)
    }
  }


  x <- switch(case,
              'lower' = tolower(x),
              'upper' = toupper(x),
              'sentence' = tosentence(tolower(x)))

  spacer <- paste(rep(' ', spacing), collapse = '')
  x <- insert(x, spacer = spacer)

  if (isTRUE(nchar(add) > 0)) ans <- paste(add, x, sep = ' ') else ans <- x
  return(ans)
}
