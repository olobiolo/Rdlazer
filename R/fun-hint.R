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
  if (topic == '') stop('topic must not be an empty string')

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
  Part <- 0
  Exercise <- 0
  Hint <- 0

  next.part <- function(p) {Part <<- Part + 1; Exercise <<- 1; Hint <<- 0}
  next.exercise <- function(e) {Exercise <<- Exercise + 1; Hint <<- 0}
  next.hint  <- function() {Hint <<- Hint + 1
                            return(paste(Part, Exercise, Hint, sep = '.'))}
  next.exercise(1)
  hints[next.hint()] <- 'first practice hint'
  hints[next.hint()] <- 'second practice hint'

  next.part(1)
  hints[next.hint()] <- 'strings are created with quote marks'
  next.exercise(2)
  hints[next.hint()] <- 'assignment is (best) done with <-'
  next.exercise(3)
  hints[next.hint()] <- 'use the paste function to concatenate strings'
  next.exercise(4)
  hints[next.hint()] <- 'use the c function to build vectors'
  next.exercise(5)
  hints[next.hint()] <- 'use a for loop'
  hints[next.hint()] <- 'iterate over the vector of days'
  next.exercise(6)
  hints[next.hint()] <- 'use the character function to create an empty character vector to store the results in'
  hints[next.hint()] <- 'take a moment to consider how to add items to a vector'
  hints[next.hint()] <- 'use c or append'
  next.exercise(7)
  hints[next.hint()] <- 'think of a way to terminate a loop before it reaches its natural end'
  hints[next.hint()] <- 'try ?Control'
  hints[next.hint()] <- 'use break'
  next.exercise(8)
  hints[next.hint()] <- 'use nested for loops'
  hints[next.hint()] <- 'think of a way to omit certain iterations in a loop'
  hints[next.hint()] <- 'try ?Control'
  hints[next.hint()] <- 'break and next are viable aternatives in this case'
  next.exercise(9)
  hints[next.hint()] <- 'a judicous use of break will do the trick'
  next.exercise(10)
  hints[next.hint()] <- 'you will need next'
  hints[next.hint()] <- 'prepare a vec tor of dates you want to omit'
  hints[next.hint()] <- 'use %in% to test whether a date is to be omitted'
  next.exercise(11)
  hints[next.hint()] <- 'create a variable that will track the week day'
  hints[next.hint()] <- 'the tracker should be a number, so that we can add 1 to it everyday'
  hints[next.hint()] <- 'use %% so the tracker does not exceed 7'
  hints[next.hint()] <- 'remember to correct for the zeros in the tracker'
  next.exercise(12)
  hints[next.hint()] <- 'read the help page for rm carefully'
  hints[next.hint()] <- 'use ls to discover the contents of GlobalEnv'

  next.part(2)
  hints[next.hint()] <- 'see what anmes returns when run on an unnamed vector'
  hints[next.hint()] <- 'try to think of a function that tests for this kind of object'
  hints[next.hint()] <- 'try help("NULL") or ?`NULL` (mind the backquotes with ?)'

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


