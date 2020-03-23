#' homework assignments
#'
#' This help page will contain homework assignments.
#'
#' If you're stuck, use the \code{hint} function.
#'
#' @section Solutions:
#' As a rule, solutions will not be provided unless I feel the exercises
#' become too difficult or tedious.
#'
#' @section For Part One:
#' The lecture and notes should be sufficient to solve all these problems.
#' When in doubt, feel free to use the help
#' but for the time being refrain from looking on the Internet.
#'
#' Since exersises 8-11 are getting large and difficult, there is a solution provided.
#' Use the \code{solution} function to get a character vector
#' like the one you're supposed to construct.
#' You can then test whether your result is EXACTLY like mine with \code{identical}.
#'
#' 1. Create and print a character string describing the current date like "25th February 2020".
#'
#' 2. Assign the previous string to a variable and print it in the console.
#'
#' 3. Create the same string by combining three separate strings:
#'    one for the day, one for the month, and one for the year.
#'
#' 4. Create three vectors that can be used to construct every date in 2000, 2010 and 2020:
#'    one for days (1st through 31st), one for months (January through December),
#'    and one for the years.
#'
#' 5. Construct all dates in January 2020, each in one separate string.
#'    Have them printed in the console.
#'
#' 6. Put all dates constructed above into one vector.
#'
#' 7. Repeat the above with all dates in June 2020. Remember, there is no June 31st.
#'
#' 8. Repeat the above with all dates in all of the three years. Mind the leap year(s).
#'
#' 9. Repeat the above but make it so that the last date is 3rd May 2020.
#'
#' 10. Repeat exercise 8 but make it so that state holidays are not included.
#'
#' 11. This is a hard one.
#'     Repeat exercise 8 but also add week days: "25th February 2020 Tuesday".
#'     2000 started on a Saturday, 2010 on a Friday, and 2020 - on a Wednesday.
#'     Even though we did cover it, you don't need subsetting to do this, so don't.
#'
#' 12. There are probably several objects in your Global Environment. (If not, create some.)
#'     Remove them all with a single console command (two at most).
#'     Try to do it in a way that does not require you to know the contents of GlobalEnv to do it.

#' @section For Part Two:
#' Use only base R when solving these problems (no added packages allowed).
#'
#' 1. Write an \code{if-else} statement that will test wheter a vector is named
#'    and print "found names" if yes, and "no names" if not.
#'    Create a named and an unnamed vector and test it.
#'
#' 2. Create a numeric vector contains NAs (but not only NAs).
#'    Now obtain a subset of the vector without the NAs.
#'
#' 3. Create a factor with \code{factor(round(rnorm(10), 6))}.
#'    Now obtain the numbers encoded within in numeric form.
#'
#' Run \code{set.seed(0)} and then \code{v <- rnorm(10000)}.
#' You have just created a 10,000 large sample from a normal distribution.
#' Normally this would be a random sample but by setting the random seed
#' to a specific value we ensure that v will be the same every time.
#' Now use \code{round} to round the numbers to 3 decimal places.
#'
#' 4. Count the number of zeros in \code{v}.
#'
#' 5. Create a character vector the same length as \code{v} with the values
#'    "negative" and "non-negative" in accordance with the numeric values of \code{v}.
#'
#' 6. Create a character vector the same length as \code{v} with the values
#'    "negative", "positive" and "zero", according to the numeric values of \code{v}.
#'    Do this at least twice, with different methods. (Assign the results to two different vectors.)
#'
#' 7. Obtain the number of "positive" and "negative" items in one of your results from exercise 6.
#'    Try using as few lines of code as possible.
#'
#' 8. To prove you did exercise 6 correctly, put \code{v} and your results side by side
#'    and show only the positions where \code{v} is 0.
#'
#' The next exercises cover working with data frames.
#' There are sure to be mutiple ways to complete them.
#' Hints will only cover one, not necessarily the best one.
#' If you can figure out how to sort a \code{data.frame}, you can use it for most exercises.
#' Sorting hints are grouped under an additional exercise number.
#'
#' Examine the \code{mtcars} data set.
#'
#' 9. Select every third row (3, 6, 9, *etc.*).
#'
#' 10. Reverse the order of columns.
#'
#' 11. Add a new column called car, which combines the make and the model.
#'     It should look just like the row names. (Don't just copy the rownames!)
#'
#' 12. Remove the car column.
#'
#' 13. Select the car with the highest horse power (hp).
#'     The result should be a single row.
#'
#' 14. Select the car that has the highest horse power (hp)
#'     out of the ones that has the lowest number fo cylinders (cyl).
#'     The result should be a single row.
#'
#' 15. Get the mileage per gallon of the car selected in the previous exercise.
#'     Try adding as little as possible to the code.
#'     The result should be a single numbe, possibly named.
#'
#' 16. Calculate the engine efficiency as understood by horse power (hp)
#'     per cubic inch of displacement (disp) and select the least efficient Mazda.
#'     The result should be a single row.
#'
#' 17. Find out which make is the most frequent and how many times it ocurrs.
#'     No manual counting, of course.
#'     The result should be the single number (possibly named).
#'
#' 18. Pick 10 rows from the \code{iris} data set at random.
#'
#' 19. Pick 9 random observations from level of tension in the \code{warpbreaks} data set
#'     and put them into a single new data frame.
#'     Not the same 9 random rows, mind you, draw independently from each category.
#'
#' 20. There are only three tension levels in \code{warpbreaks}.
#'     For added difficulty, try doing exercise 19 as if that number were unknown.
#'     This can prove quite difficult, expecially as you try to put the thing together.
#'
#'
#'
#'
#'
#'
# #' . There are a number of built-in data sets in R.
# #'   They are attached to every R session and reside in the datasets package.
# #'   Find out which of them are data frames that contain at least two columns that are factors.
# #'   Present the result as a character vector.
# #'


# #' @section For Part Three:
# #' \enumerate{
# #'   \item{
# #'   Obtain a data frame with 10 random irises from every species in the iris data set.
# #'   Do it with both \code{dplyr} and \code{data.table}.
# #'   }
# #'   \item{
# #'   compare frequencies of two types of events in two data sets
# #'   }
# #' }

#' @name homework

NULL
