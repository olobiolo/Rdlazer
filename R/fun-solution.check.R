#' check your solution
#'
#' Create a neat table of the dates you created.
#'
#' @section: Warning
#' If you try to get a table for three years, it may not print completely.
#' In that case, limit it to a single year with the \code{years} argument.
#'
#' @param result character vector of dates
#' @param years.incl character vector of years to include in the table
#' @param months.incl character vector of months to include in the table
#'
#' @export
solution.check <- function(result, years.incl = NULL, months.incl = NULL) {

  days <- c('1st',   '2nd',  '3rd',  '4th',  '5th',  '6th',  '7th',  '8th',  '9th', '10th',
            '11th', '12th', '13th', '14th', '15th', '16th', '17th', '18th', '19th', '20th',
            '21st', '22nd', '23rd', '24th', '25th', '26th', '27th', '28th', '29th', '30th',
            '31st')
  months <- c('January', 'February', 'March', 'April', 'May', 'June',
              'July', 'August', 'September', 'October', 'November', 'December')
  years <- c(2000, 2010, 2020)

  x <- data.frame(date = result, stringsAsFactors = FALSE)
  x$date2 <- strsplit(x = x$date, split = ' ')
  x$year <- sapply(x$date2, function(x) x[3])
  x$month <- sapply(x$date2, function(x) x[2])
  x$day <- sapply(x$date2, function(x) x[1])
  #x$weekday <- sapply(x$date2, function(x) x[4])
  x$month <- factor(x$month, levels = months)
  x$day <- factor(x$day, levels = days)
  if (!is.null(years.incl)) x <- x[x$year %in% years.incl, ]
  if (!is.null(months.incl)) x <- x[x$month %in% months.incl, ]
  ans <- with(x, table(day, month, year))
  return(ans)
}
