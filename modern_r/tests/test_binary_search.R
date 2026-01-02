# Unit tests with testthat

library(testthat)
#source("../R/binary_search.R") # OBS: when running from modern_r/R directory
source("modern_r/R/binary_search.R") # if R Project is set at project root

test_that("binary search behaves like a classic implementation", {

  expect_true(is.na(binary_search(integer(0), 10)))

  array <- c(1, 3, 5, 7, 9)

  expect_equal(binary_search(array, 1), 1)
  expect_equal(binary_search(array, 5), 3)
  expect_equal(binary_search(array, 9), 5)
  expect_true(is.na(binary_search(array, 4)))

  dup_array <- c(1, 2, 2, 2, 3)
  pos <- binary_search(dup_array, 2)
  expect_true(pos >= 2 && pos <= 4)
})

