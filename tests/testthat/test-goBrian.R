
test_that("Brian makes mistakes", {
  expect_identical(goBrian('Romani ite domum', times = 100, freq = 0, upto = 3),
                   rep('Romani ite domum', 100))
})
