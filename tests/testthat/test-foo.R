
test_that("default call works", {
  expect_identical(foo('bar'), 'bar')
})

test_that("stuid games yield stupid prizes", {
  expect_error(foo())
  expect_identical(foo(x = NULL), NULL)
  expect_identical(foo(x = character(0)), character(0))

})

test_that("changing case works", {
  expect_identical(foo('bar', case = 'l'), 'bar')
  expect_identical(foo('bar', case = 'lower'), 'bar')
  expect_identical(foo('bar', case = 'u'), 'BAR')
  expect_identical(foo('bar', case = 'upper'), 'BAR')
  expect_identical(foo('bar', case = 's'), 'Bar')
  expect_identical(foo('bar', case = 'sentence'), 'Bar')
  expect_identical(foo('BAR', case = 'l'), 'bar')
  expect_identical(foo('BAR', case = 'lower'), 'bar')
  expect_identical(foo('BAR', case = 'u'), 'BAR')
  expect_identical(foo('BAR', case = 'upper'), 'BAR')
  expect_identical(foo('BAR', case = 's'), 'Bar')
  expect_identical(foo('BAR', case = 'sentence'), 'Bar')
  expect_identical(foo('Bar', case = 'l'), 'bar')
  expect_identical(foo('Bar', case = 'lower'), 'bar')
  expect_identical(foo('Bar', case = 'u'), 'BAR')
  expect_identical(foo('Bar', case = 'upper'), 'BAR')
  expect_identical(foo('Bar', case = 's'), 'Bar')
  expect_identical(foo('Bar', case = 'sentence'), 'Bar')
  # special cases
  expect_identical(foo(x = '', case = 'sentence'), '')
  expect_identical(foo('b', case = 'sentence'), 'B')
})

test_that("spacing works", {
  expect_identical(foo('bar', spacing = 0), 'bar')
  expect_identical(foo('bar', spacing = 1), 'b a r')
  expect_identical(foo('bar', spacing = 2), 'b  a  r')
  expect_identical(foo('bar', spacing = 3), 'b   a   r')
  expect_identical(foo('bar', spacing = 2.6), 'b  a  r')
  expect_warning(foo('bar', spacing = 2.6))
  expect_identical(foo('bar', spacing = -2.6), 'bar')
  expect_warning(foo('bar', spacing = -2.6))
})

test_that("adding text works", {
  expect_identical(foo('bar', add = 'this is'), 'this is bar')
  expect_identical(foo('bar', add = ''), 'bar')
  expect_identical(foo('bar', add = NULL), 'bar')
  expect_identical(foo('bar', add = ' '), '  bar')
})

test_that("ignoring works", {
  expect_identical(foo('bar', ignore = TRUE), 'bar')
})


test_that("vectors are served", {
  expect_identical(
    foo(c('bar', 'barr'), spacing = 1, case = 'upper', add = 'this is'),
    c('this is B A R', 'this is B A R R'))
})
