
test_that("hints work", {
  expect_output(hint('0.1'), ':\tfirst practice hint')
  expect_output(hint('0.1.1'), ':\tfirst practice hint')
  expect_output(hint('0.1.2'), ':\tsecond practice hint')

})

test_that("errors work", {
  # hint of length 0
  expect_error(hint(character(0)))
  # hint of length 2
  expect_error(hint(c('1','2')))
  # non-existent hint
  expect_error(hint('0.0'))
  # empty string
  expect_error(hint(''))
  # numeric input
  expect_error(hint(1))
})
