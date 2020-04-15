#' homework assignments
#'
#' This help page will contain homework assignments. It will grow in time.
#'
#' Try solving the problems one by one, some solutions build on previous ones.
#' If you're stuck, use the \code{hint} function.
#'
#' Unless otherwise stated, use only base R when solving these problems
#' (no added packages allowed).
#'
#' @section Solutions:
#' As a rule, solutions will not be provided unless I feel the exercises
#' become too difficult or tedious.



#'
#'     \cr
#' @section For Part One:
#' Part One encompasses the Notes 01 vignette.
#'
#' The lecture and notes should be sufficient to solve all these problems.
#' When in doubt, feel free to use the help
#' but for the time being refrain from looking on the Internet.
#'
#' Since exercises 8-11 are getting large and difficult, there is a solution provided.
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
#'     You don't need subsetting to do this, so don't, even though we did cover it at the lecture.
#'
#' 12. There are probably several objects in your Global Environment. (If not, create some.)
#'     Remove them all with a single console command (two at most).
#'     Try to do it in a way that does not require you to know the contents of GlobalEnv to do it.



#'
#'     \cr
#' @section For Part Two (Notes 02 and 03):
#'
#' 1. Write an \code{if-else} statement that will test wheter a vector is named
#'    and print "found names" if yes, and "no names" if not.
#'    Create a named and an unnamed vector and test it.
#'
#' 2. Create a numeric vector that contains NAs (but not only NAs).
#'    Now obtain a subset of the vector without the NAs.
#'
#' 3. Create a factor with \code{factor(round(rnorm(10), 6))}.
#'    Now obtain the numbers encoded within in numeric form.
#'
#' Run \code{set.seed(0)} and then \code{v <- rnorm(10000)}.
#' You have just created a 10,000 large sample from a normal distribution.
#' Normally this would be a random sample but by setting the random seed
#' to a specific value we ensure that \code{v} will be the same every time.
#' Now use \code{round} to round the numbers to 3 decimal places.
#'
#' 4. Count how may elements of \code{v} are zeros.
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
#' 19. Pick 9 random observations from each level of tension in the \code{warpbreaks}
#'     data set and put them into a single new data frame.
#'     Not the same 9 random rows, mind you, draw independently from each category.
#'
#' 20. This is substantially more difficult.
#'     There are only three tension levels in \code{warpbreaks}.
#'     For added difficulty, try doing exercise 19 as if that number were unknown.
#'     This can prove quite difficult, expecially as you try to put the thing together.
#'
#' 21. Examine the \code{trees} data set and its help page.
#'     Change all data to metric units.



#'
#'     \cr
#' @section For Part Three (Notes 04 through 06):
#'
#' 1. Recall \bold{exercise 3} from Part Two.
#'    Solve it again but this time do it by writing a function.
#'    (Not co create the factor but to get the numbers out, obviously.)
#'
#' 2. Solve \bold{exercise 4} from Part Two by writing a function.
#'
#' 3. Expand the function from the exercise 2 so that it returns
#'    the numbers of negative, positive, and 0 elements
#'    like in \bold{exericse 7} from Part Two.
#'
#' 4. Write a function that will remove one or more columns from a data frame.
#'    The columns to be removed must be able to be specified
#'    either with a character vector or an integer vector.
#'    The function must return a modified data frame, not modify the existing one.
#'
#' 5. This is a hard one, feel free to skip it.
#'    Write another function like in exercise 4 but have this one modify
#'    the original data frame rather than returning a modified one.
#'
#' 6. Write a function that randomly picks a specified number of rows from a data frame.
#'
#' 7. Use the function from exercise 6 to solve \bold{exercise 19} from Part Two.
#'    No loops this time.
#'
#' The \code{datasets} package contains a number of data sets.
#'
#' 8. Find out which of the data sets in \code{datasets} are data frames.
#'    Put their names as a character vector.
#'    Don't use loops.
#'
#' 9. Find out which of the data frames from exercise 8 have at least three columns.
#'    Don't use loops.
#'
#' 10. Find out which of the data frames from exercise 8 contain
#'     at least two columns that are factors.
#'     Don't use loops.
#'
#' 11. Examine the \code{iris} data set (the one from \code{Rdlazer}).
#'     Obtain the mean of all numeric columns, observing the fllowing conditions: \cr
#'     \verb{   }a) non-numeric columns should be excluded from the result \cr
#'     \verb{   }b) assume you don't know the number, name(s) or position(s)
#'                  of non-numeric columns; \cr
#'     \verb{     }in other words, your solution should work just as well
#'                 after a random reshuffle of columns \cr
#'     \verb{   }c) the result must be a numeric vector \cr
#'     \verb{   }d) \bold{do everything in one line of code} \cr
#'
#' 12. Examine the \code{iris} data set (the one from \code{Rdlazer}).
#'     Obtain the mean and standard deviation of all numeric columns,
#'     observing the fllowing conditions: \cr
#'     \verb{   }a) non-numeric columns should be excluded from the result \cr
#'     \verb{   }b) assume you don't know the number, name(s) or position(s)
#'                  of non-numeric columns; \cr
#'     \verb{     } in other words, your solution should work just as well
#'                  after a random reshuffle of columns \cr
#'     \verb{   }c) the result must be a named numeric matrix \cr
#'     \verb{   }d) the numeric columns must be placed in rows and the statistics in columns \cr
#'     \verb{   }e) \bold{do everything in one line of code} \cr



# #'
# #'     \cr
# #' @section For Part :
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
