#' homework hints
#'
#' Get a hint for a homework assignment.
#'
#' You can request hints for a whole course part (\code{topic = 1}),
#' a specific task (\code{topic = 1.1}), or ask for a specific hint (\code{topic = 1.1.1}).
#'
#' @param topic single character string, see \code{Detials}
#'
#' @return Does not return, merely prints text to the console.
#'
#' @export

hint <- function(topic) {
  if (length(topic) != 1) stop('topic must be a character of length 1')

  hints <- hintlist()
  hints.now <- grep(paste0('^', topic), names(hints), value = TRUE)
  hints.now <- hints[hints.now]

  if (length(hints.now) == 0) {
    stop('sorry, no such hint')
  } else if (length(hints.now) == 1) {
    return(as.vector(hints.now[topic]))
  } else {
    lastname <- names(hints.now[length(hints.now)])
    for (h in names(hints.now)) {
      cat(as.vector(hints.now[h]), '\n')
      if (h == lastname) {
        break
      } else {
        go.on <- readline('next hint? (yes/no) ')
        if (!grepl(go.on, 'yes', ignore.case = TRUE)) break
      }
    }
  }
}


#' @keywords internal
hintlist <- function() {
  hints <- character(0)

  hints['1.1.1'] <- 'use the ls function to list all objects in a package namespace'
  hints['1.1.2'] <- 'use is.data.frame and is.factor to test the class of a data set and a column'
  hints['1.1.3'] <- 'make use of the apply family of functions'

  # hints['1.2.1'] <- 'what you\'re after is a subset of the data'
  # hints['1.2.2'] <- 'use the sample function'
  #
  # hints['1.3.1'] <- 'this is a split-apply-combine problem'
  # hints['1.3.2'] <- 'split up iris by values of Species, pick random rows and recombine into a single data frame'

  return(hints)
}
