#' solution for dates
#'
#' Reproduce a result for excersises 8-11 created by me for comparison.
#'
#' @param skip character vector of dates to skip
#' @param end character string of date to end on
#' @param weekdays logical flag whether to add weekdays
#'
#' @return A character vector of dates in the format "25th February 2020 Tuesday".
#' The week day is added depending on the \code{weekdays} argument.
#' Particular days can be skipped and the whole vector can end at a specific date.
#'
#' @seealso \code{\link[Rdlazer]{solution.check}}
#' @export
#'
solution <- function(skip = NULL, end = NULL, weekdays = FALSE) {
  result <- solution.build(skip = skip, end = end, weekdays = weekdays)
  return(result)
}

#' @keywords internal
solution.build <- function(skip, end, weekdays) {
  days <- c('1st',   '2nd',  '3rd',  '4th',  '5th',  '6th',  '7th',  '8th',  '9th', '10th',
            '11th', '12th', '13th', '14th', '15th', '16th', '17th', '18th', '19th', '20th',
            '21st', '22nd', '23rd', '24th', '25th', '26th', '27th', '28th', '29th', '30th',
            '31st')
  months <- c('January', 'February', 'March', 'April', 'May', 'June',
              'July', 'August', 'September', 'October', 'November', 'December')
  years <- c(2000, 2010, 2020)
  # create vector to store results
  dates <- character(0)
  for (y in years) {
    if (weekdays) {
      if (y == 2000) w <- 6
      if (y == 2010) w <- 5
      if (y == 2020) w <- 3
    }
    for (m in months) {
      for (d in days) {
        if (m %in% c('April', 'June', 'September', 'November')) {
          if (d == '31st') next
        } else if (m == 'February') {
          if ((y %% 4 == 0 & y %% 100 != 0) | y %% 400 == 0) {
            if (d %in% c('30th', '31st')) next
          } else {
            if (d %in% c('29th', '30th', '31st')) next
          }
        }
        if (weekdays) {
          if (w == 1) wday <- 'Monday'
          if (w == 2) wday <- 'Tuesday'
          if (w == 3) wday <- 'Wednesday'
          if (w == 4) wday <- 'Thursday'
          if (w == 5) wday <- 'Friday'
          if (w == 6) wday <- 'Saturday'
          if (w == 7) wday <- 'Sunday'

          w <- (w + 1) %% 7
          if (w == 0) w <- 7
          date <- paste(d, m, y, wday)
        } else {
          date <- paste(d, m, y)
        }

        dates <- c(dates, date)
        if (!is.null(skip)) {if (any(grepl(date, skip))) next}
        if (!is.null(end)) {if (date == end) break}
      }
      if (!is.null(end)) {if (date == end) break}
    }
    if (!is.null(end)) {if (date == end) break}
  }
  return(dates)
}
