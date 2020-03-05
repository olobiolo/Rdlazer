
test_that("Cleese and Brian are graded correctly", {
  expect_identical(grade(Cleese), "3/3")
  expect_identical(grade(Brian), "0/3")
})
