#' Brian's mission
#'
#' Vandalize Pilat's palace with your poor Latin.
#'
#' Generate a number of sings of a slogan, not all of them in proper Latin.
#' Errors will be randomly introduced at random repetitions fo the slogan.
#' At the moment only character replacements will be made, the number of characters will remain the same.
#' Only letters will be affected, save the first one. All mistakes will be in lowercase.
#' Spaces at beginning and end of \code{slogan} will be removed.
#'
#' @param slogan sign that Brian will try to write
#' @param times how many times he will write it
#' @param freq frequency of mistakes he will make (fraction of signs with mistakes)
#' @param upto number of mistakes possible per sign
#'
#' @return character vector of signs that Biran has written on Pilats' palace.
#' With letters as tall as a man!
#'
#' @export
#'
goBrian <- function(slogan = 'Romani ite domum', times = 100, freq = 0.3, upto = 3) {
  # remove spaces from beginning and end of slogan
  slogan <- sub('^ | $', '', slogan)
  # generate sets of good and bad slogans, based on frequency
  good <- rep(slogan, ceiling(times * (1-freq)))
  bad <- unlist(replicate(floor(times * freq), make_mistake(slogan)))
  ans <- sample(c(good, bad))
  return(ans)
}
