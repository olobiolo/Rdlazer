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
  if (length(topic) != 1 | !is.character(topic)) stop('topic must be a single character string')
  if (topic == '') stop('topic must not be an empty string')

  hints <- hintlist()
  hints.now <- grep(paste0('^', topic), names(hints), value = TRUE)
  hints.now <- hints[hints.now]

  if (length(hints.now) == 0) {
    stop('sorry, no such hint')
  } else if (length(hints.now) == 1) {
    cat(names(hints.now), ':', '\t', hints.now, '\n', sep = '')
    #return(as.vector(hints.now[topic]))
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
  next.hint  <- function(h) {Hint <<- Hint + 1
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
  hints[next.hint()] <- 'use c or character to create an empty character vector to store the results'
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
                   # if-else statement for is.null
  hints[next.hint()] <- 'see what names returns when run on an unnamed vector'
  hints[next.hint()] <- 'try to think of a function that tests for this kind of object'
  hints[next.hint()] <- 'try help("NULL") or ?`NULL` (mind the backquotes when using ?)'
  next.exercise(2) #removeing NAs
  hints[next.hint()] <- 'use subsetting with a logical vector'
  hints[next.hint()] <- 'obtain a logical vector that says which elements of your vector are NAs'
  hints[next.hint()] <- 'you can put a logical condition in the brackets'
  next.exercise(3) # factor to numeric
  hints[next.hint()] <- 'the values of a factor are integers, which are mapped to levels'
  hints[next.hint()] <- 'the numeric values are stored in the levels'
  hints[next.hint()] <- 'levels is a character vector'
  next.exercise(4) # sum of logical
  hints[next.hint()] <- 'comparisons are vectorized operations'
  hints[next.hint()] <- 'vectorization allows to compare a whole vector to a number'
  hints[next.hint()] <- 'logical values are interpretable as integers'
  hints[next.hint()] <- 'comparison to zero produces TRUE where v is 0 and FALSE elswhere'
  hints[next.hint()] <- 'obtain a sum of the logical vector produced by the comparison'
  next.exercise(5) # single ifelse
  hints[next.hint()] <- 'try to express the negative/non-negative dichotomy in logical terms'
  hints[next.hint()] <- 'use a comparison to obtain a logical vector'
  hints[next.hint()] <- 'create the character vector based on the logical vector'
  hints[next.hint()] <- 'the easiest method is to use the ifelse function (not an if-else statement)'
  next.exercise(6) # sequential ifelse; changing factor levels; which
  hints[next.hint()] <- 'hints will cover three methods: 1) 2-7, 2) 8-16, 3) 17-21'
  hints[next.hint(2)] <- 'method 1 is to use a series of ifelse calls'
  hints[next.hint(3)] <- 'in ifelse all arguments can be vectors'
  hints[next.hint(4)] <- 'the nth item of test yields the nth item of yes or no'
  hints[next.hint(5)] <- 'create a vector with ifelse, testing if v is negative'
  hints[next.hint(6)] <- 'modify the new vector in positions where v is positive'
  hints[next.hint(7)] <- 'repeat the above step for positions where v is zero'
  hints[next.hint(8)] <- 'method 2 is to use factors'
  hints[next.hint(9)] <- 'factors allow for easy replacement in character vectors'
  hints[next.hint(10)] <- 'it is enough to change a level'
  hints[next.hint(11)] <- 'we must first convert v to a factor with three values'
  hints[next.hint(12)] <- 'we want to classify the numbers in v according to their sign'
  hints[next.hint(13)] <- 'use the sign function'
  hints[next.hint(14)] <- 'convert the result to factor'
  hints[next.hint(15)] <- 'change the factor levels'
  hints[next.hint(16)] <- 'convert to character'
  hints[next.hint(17)] <- 'method 3 is to use the which function'
  hints[next.hint(18)] <- 'ceate an empty character vector of the same length as v'
  hints[next.hint(19)] <- 'use which to determine indices of negative numbers in v'
  hints[next.hint(20)] <- 'assign "negative" to those indices in the result vector'
  hints[next.hint(21)] <- 'repeat for positive and 0'
  next.exercise(7) # factor summary
  hints[next.hint()] <- 'factors provide a quick way to count ocurrences of their levels'
  hints[next.hint()] <- 'use summary'
  next.exercise(8) # cbind and index, maybe which
  hints[next.hint()] <- 'put your vectors into a 2d structure'
  hints[next.hint()] <- 'a matrix or a data frame will do just as well'
  hints[next.hint()] <- 'subset the appropriate dimension to get the slices where v is 0'
  hints[next.hint()] <- 'use a logical vector or which'
  next.exercise(9) # selecting rows
  hints[next.hint()] <- 'use a numeric sequence or a logical vector'
  hints[next.hint()] <- 'a sequence can be created with seq'
  hints[next.hint()] <- 'a logical vector will be recycled if it is too short'
  next.exercise(10) # selecting columns
  hints[next.hint()] <- 'use rev to reverse order in a vector'
  hints[next.hint()] <- 'use numeric indices of column names'
  next.exercise(11) # creating column
  hints[next.hint()] <- 'strings are concatenated with paste'
  hints[next.hint()] <- 'you can expand a data.frame by binding a vector as a new column'
  hints[next.hint()] <- 'you can assign to a new column name'
  next.exercise(12) # removing column
  hints[next.hint()] <- 'you can select as many columns as you like'
  hints[next.hint()] <- 'you can use a negative index to drop a column'
  hints[next.hint()] <- 'you can replace a column with nothing'
  next.exercise(13) # finding max value and selecting; or sorting
  hints[next.hint()] <- 'use max to determine the highest value of the hp column'
  hints[next.hint()] <- 'compare the column to the max value'
  hints[next.hint()] <- 'use the result of the comparison for selecting the appropriate row'
  hints[next.hint()] <- 'alternatively, sort by the hp column with order and select the firs row'
  next.exercise(14) # repeat above twice; or doube sorting
  hints[next.hint()] <- 'first select the cars with the lowest number of cylinders'
  hints[next.hint()] <- 'then find teh one with the highest horse power'
  hints[next.hint()] <- 'alternatively sort by two columns'
  next.exercise(15) # add index in one subset operation
  hints[next.hint()] <- 'add column selection to the existing call'
  next.exercise(16) # assign colum, select and get minimum; or double sort
  hints[next.hint()] <- 'assign the efficiency vector as a new column'
  hints[next.hint()] <- 'select only Mazdas'
  hints[next.hint()] <- 'get the car with the lowest efficiency'
  hints[next.hint()] <- 'alternatively, sort by efficiency and select teh first Mazda'
  next.exercise(17) # which make is most frequent
  hints[next.hint()] <- 'obtain the number of ocurrences ofr each make'
  hints[next.hint()] <- 'use summary or table'
  hints[next.hint()] <- 'sort in decreasing order'
  hints[next.hint()] <- 'select the first item'
  hints[next.hint()] <- 'sort(table(m$make), decreasing = T)[1]'
  next.exercise(18) #random rows
  hints[next.hint()] <- 'you want a random sample of rows'
  hints[next.hint()] <- 'try ?sample'
  hints[next.hint()] <- 'use the random sample as row index'
  next.exercise(19) #random row by group
  hints[next.hint()] <- 'split the data frame according to the tension levels'
  hints[next.hint()] <- 'select random rows'
  hints[next.hint()] <- 'bind the data frames back together'
  next.exercise(20) # random rows by unknown number of groups
  hints[next.hint()] <- 'you will need a for loop to iterate over the tension levels'
  hints[next.hint()] <- 'creating a variable form within a loop is easily done with assign'
  hints[next.hint()] <- 'alternatively you can store new variables in a list'
  hints[next.hint()] <- 'you will need another for loop to bind the results'
  hints[next.hint()] <- 'reveal bonus hint?'
  hints[next.hint()] <- 'try using split'
  hints[next.hint()] <- 'reveal bonus bonus hint?'
  hints[next.hint()] <- 'try using do.call'
  next.exercise(21)
  hints[next.hint()] <- 'remember vectorized operations'
  hints[next.hint()] <- 'you your results to existing columns'
  next.exercise()
  hints[next.hint()] <- 'sorting is done with order but the help is quite confusing'
  hints[next.hint()] <- 'focus on what order does to a numeric vector rather than a data frame'
  hints[next.hint()] <- 'you will need a scrambled numeric to experiment'
  hints[next.hint()] <- 'order returns a numeric vector of indices'
  hints[next.hint()] <- 'apply the indices to the vector passed to order to sort them'
  hints[next.hint()] <- 'once you know how to use order to sort a numeric, try sorting two'
  hints[next.hint()] <- 'you will need a numeric with ties, i.e. dupilcated values'
  hints[next.hint()] <- 'ordering will break ties in the first vector with values of the second one'
  hints[next.hint()] <- 'remember the comma when reordering the data frame'

  # hints['2.1.1'] <- 'use the ls function to list all objects in a package namespace'
  # hints['2.1.2'] <- 'use is.data.frame and is.factor to test the class of a data set and a column'
  # hints['2.1.3'] <- 'make use of the apply family of functions'

  return(hints)
}


