#' homework hints
#'
#' Get a hint for a homework assignment.
#'
#' When you request a hint, you must specify the \code{topic}.
#' This can be a single exercise, a specific hint for a specific exercise,
#' or all hints for all exercises for a specific part of the course.
#' In every case \code{topic} contains the index of the hint(s) you request
#' in the form of \code{"<part>.<exercise>.<hint>"}.
#'
#' Remember, the hints are there to guide you, not constraint you.
#' You should use them as advice, not as imperative statements.
#' They assume one possible solution but most of the time more exist.
#' Take the hints as descriptive rather than perscriptive.
#'
#' @param topic single character string, see \code{Detials}
#'
#' @section Warning:
#' I suggest you take your time before requesting a hint.
#' Also, be careful to get one hint at a time lest they spoil your success.
#' And your fun!
#'
#' @export
#'
#' @examples
#' hint('0')
#' hint('0.1')
#' hint('0.1.1')

hint <- function(topic) {
  if (length(topic) != 1) stop('topic must be a single character string')

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
      cat(h, ':', '\t', as.vector(hints.now[h]), '\n', sep = '')
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

  hints['0.1.1'] <- 'first practice hint'
  hints['0.1.2'] <- 'second practice hint'

  hints['1.1.1'] <- 'strings are created with quote marks'

  hints['1.2.1'] <- 'assignment is (best) done with <-'

  hints['1.3.1'] <- 'use the paste function to concatenate strings'

  hints['1.4.1'] <- 'use the c function to build vectors'

  hints['1.5.1'] <- 'use a for loop'
  hints['1.5.2'] <- 'iterate over the vector of days'

  hints['1.6.1'] <- 'use the character function to create an empty character vector to store the results in'
  hints['1.6.2'] <- 'take a moment to consider how to add items to a vector'
  hints['1.6.3'] <- 'use c or append'

  hints['1.7.1'] <- 'think of a way to terminate a loop before it reaches its natural end'
  hints['1.7.2'] <- 'try ?Control'
  hints['1.7.3'] <- 'use break'

  hints['1.8.1'] <- 'use nested for loops'
  hints['1.8.2'] <- 'think of a way to omit certain iterations in a loop'
  hints['1.8.3'] <- 'try ?Control'
  hints['1.8.4'] <- 'break and next are viable aternatives in this case'

  hints['1.9.1'] <- 'a judicous use of break will do the trick'

  hints['1.10.1'] <- 'you will need next'
  hints['1.10.2'] <- 'prepare a vec tor of dates you want to omit'
  hints['1.10.3'] <- 'use %in% to test whether a date is to be omitted'

  hints['1.11.1'] <- 'create a variable that will track the week day'
  hints['1.11.2'] <- 'the tracker should be a number, so that we can add 1 to it everyday'
  hints['1.11.3'] <- 'use %% so the tracker does not exceed 7'
  hints['1.11.4'] <- 'remember to correct for the zeros in the tracker'

  hints['1.12.1'] <- 'read the help page for rm carefully'
  hints['1.12.2'] <- 'use ls to discover the contents of GlobalEnv'

  # hints['2.1.1'] <- 'use the ls function to list all objects in a package namespace'
  # hints['2.1.2'] <- 'use is.data.frame and is.factor to test the class of a data set and a column'
  # hints['2.1.3'] <- 'make use of the apply family of functions'

  # hints['2.2.1'] <- 'what you\'re after is a subset of the data'
  # hints['2.2.2'] <- 'use the sample function'
  #
  # hints['2.3.1'] <- 'this is a split-apply-combine problem'
  # hints['2.3.2'] <- 'split up iris by values of Species'
  # hints['2.3.3'] <- 'pick random rows from subsets and recombine into a single data frame'

  return(hints)
}


