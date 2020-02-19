#' corrupt spelling of a slogan
#'
#' As Brian is rather poor at Latin, he will make random spelling errors when on his mission.
#'
#' @details
#' These are internal functions used by \code{goBrian}.
#'
#' @param string string to make errors in
#' @param positions number of positions to do typos at; taken from \code{goBrian}
#'
#' @return
#' \code{make_mistake} returns a \code{slogan} with spelling error(s) introduced.
#' \code{pick_position} returns an integer vector.
#'
#' @keywords internal
#'
#' @describeIn spelling
#' At the moment only does substitutions; removing or adding characters is not supported.
#' All mistakes are in lowercase at the moment.
make_mistake <- function(string) {
  pos <- pick_position(string = get('slogan', envir = parent.frame()),
                       positions = get('upto', envir = parent.frame()))
  apart <- strsplit(string, split = '')[[1]]
  # this is where you might check for character case
  apart[pos] <- sample(letters, length(pos), replace = TRUE)
  mistaken <- paste(apart, collapse = '')
  return(mistaken)
}

#' @describeIn spelling
#' Randomly picks positions where mistakes will be made.
#' It runs recursively until all picked positions correspond to letters.
#' The first letter will always be correct.
pick_position <- function(string, positions) {
  pos <- sample(2:nchar(string), positions, replace = FALSE)
  char <- vapply(pos, function(x) substr(string, x, x), character(1))
  if (all(is.element(char, c(letters, LETTERS)))) {
    return(pos)
  } else {
    pick_position(string = string, positions = positions)
  }
}
