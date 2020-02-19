#' grade offensive graffiti
#'
#' Check a painted slogan against its proper Latin and grade it
#' between 0 and 1 based on the number of the words that are correct.
#'
#' @param slogan slogan to grade
#' @param correct correct form of the slogan
#'
#' @return A character vector of grades in the form of 1/3, meaning 1 out of three words are correct.
#'
#' @export
#'
grade <- function(slogan, correct = 'Romani ite domum') {
  slogan_split <- strsplit(slogan, split = ' ')
  correct_split <- strsplit(correct, split = ' ')[[1]]
  # function to score a single slogan
  score_one <- function(x) {
    sum(mapply(identical, x, y = correct_split))
  }
  # score any number of slogans
  score <- vapply(slogan_split, score_one, integer(1))
  grade <- paste(score, length(correct_split), sep = '/')
  return(grade)
}

#' @examples
#' Brian <- 'Romanes eunt domus'
#' Cleese <- 'Romani ite domum'
#' grade(Brian)
#' grade(Cleese)
